import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/api/http_service.dart';
import 'package:music/entity/user_detail_entity.dart';
import 'package:music/pages/common/base_content_view_model.dart';

import '../../api/data_store.dart';

class MyProfileViewModel extends BaseContentViewModel<UserDetailProfile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  List _provinceList = [];

  List get provinceList => _provinceList;

  DateTime _birthday = DateTime.now();

  ///出生日期 默认今天
  DateTime get birthday => _birthday;

  String _provinceName = '';

  String get provinceName => _provinceName;

  String _cityName = '';

  String get cityName => _cityName;

  int _gender = 0;

  int get gender => _gender;

  bool _loading = false;

  bool get loading => _loading;

  ///默认北京
  int _provinceId = 1;
  int _cityId = 110000;

  void updateBirthday(DateTime dateTime) {
    if (kDebugMode) {
      print("出生日期发生了变化 $dateTime");
    }
    _birthday = dateTime;
    notifyListeners();
  }

  @override
  Future<UserDetailProfile?> getContent() async {
    final entity = await HttpService.instance
        .getUserDetail(DataStore.instance.getUserId() ?? 0);
    nameController.text = entity?.profile?.nickname ?? "";
    descController.text = entity?.profile?.signature ?? '';

    if (kDebugMode) {
      print("birthday = ${entity?.profile?.birthday}");
    }
    final profile = entity?.profile;

    if (profile != null) {
      final province = provinceList
          .firstWhere((element) => element["id"] == profile.province);

      if (province != null) {
        _provinceName = province["name"];
        final cityList = province["cities"] as Map;
        _cityName = cityList[profile.city.toString()].toString();
      }

      _provinceId = profile.province ?? 1;
      _cityId = profile.city ?? 110000;

      _birthday = DateTime.fromMillisecondsSinceEpoch(profile.birthday ?? 0);

      _gender = profile.gender ?? 0;
    }

    return profile;
  }

  void onProvinceCitySelected(List<dynamic> result, List<int> indexResult) {
    _provinceName = result[0];
    _cityName = result[1];
    notifyListeners();
    final province = provinceList[indexResult[0]];
    _provinceId = province['id'];
    final cityList = province["cities"] as Map<String, dynamic>;

    _cityId = int.parse(cityList.keys.toList()[indexResult[1]].toString());

    if (kDebugMode) {
      print(
          'province = ${result[0]} id = $_provinceId, city = ${result[1]} id = $_cityId ');
    }
  }

  MyProfileViewModel() {
    _loadProvinceCityJson();

    loadContent();
  }

  void _loadProvinceCityJson() async {
    String data = await rootBundle.loadString('static/city.json');

    _provinceList = jsonDecode(data) as List;
    // if (kDebugMode) {
    //   print("省的size 是 ${_provinceList.length}");
    // }
  }

  void onGenderChanged(int? value) {
    if (value == null) {
      return;
    }
    _gender = value;
    notifyListeners();
  }

  ///提交
  Future<bool> commit() async {
    _loading = true;
    notifyListeners();
    final result = await HttpService.instance.updateMyProfile(
        gender,
        birthday.millisecondsSinceEpoch,
        nameController.text,
        descController.text,
        _provinceId,
        _cityId);
    _loading = false;
    notifyListeners();
    return result;
  }
}
