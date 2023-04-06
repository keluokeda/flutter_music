import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pickers/pickers.dart';
import 'package:music/entity/user_detail_entity.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/my_profile/my_profile_view_model.dart';
import 'package:oktoast/oktoast.dart';

class MyProfilePage
    extends BaseContentPage<MyProfileViewModel, UserDetailProfile> {
  const MyProfilePage({super.key});

  @override
  Widget buildContent(BuildContext context, UserDetailProfile data,
      MyProfileViewModel viewModel) {
    return ListView(
      padding: const EdgeInsets.only(top: 16),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextFormField(
            controller: viewModel.nameController,
            maxLines: 1,
            enabled: !viewModel.loading,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "请输入昵称",
                labelText: "昵称"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextFormField(
            controller: viewModel.descController,
            enabled: !viewModel.loading,
            maxLines: 1,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "请输入介绍",
                labelText: "介绍"),
          ),
        ),
        ListTile(
          onTap: viewModel.loading
              ? null
              : () async {
                  final dateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1000),
                      lastDate: DateTime(3000));

                  if (dateTime != null) {
                    viewModel.updateBirthday(dateTime);
                  }
                },
          title: const Text("出生日期"),
          trailing: Text(
              "${viewModel.birthday.year}-${viewModel.birthday.month}-${viewModel.birthday.day}"),
        ),
        ListTile(
          onTap: viewModel.loading
              ? null
              : () async {
                  final json = {};
                  for (var element in viewModel.provinceList) {
                    json[element["name"].toString()] =
                        (element["cities"] as Map<String, dynamic>)
                            .values
                            .toList();
                  }
                  Pickers.showMultiLinkPicker(context, data: json, columeNum: 2,
                      onConfirm: (result, indexList) {
                    viewModel.onProvinceCitySelected(result, indexList);
                  });
                },
          title: const Text("地区"),
          trailing: Text("${viewModel.provinceName}-${viewModel.cityName}"),
        ),
        const ListTile(
          title: Text('性别'),
        ),
        RadioListTile<int>(
            value: 0,
            groupValue: viewModel.gender,
            title: const Text('保密'),
            onChanged: viewModel.loading ? null : viewModel.onGenderChanged),
        RadioListTile<int>(
            value: 1,
            title: const Text('男'),
            groupValue: viewModel.gender,
            onChanged: viewModel.loading ? null : viewModel.onGenderChanged),
        RadioListTile<int>(
            value: 2,
            title: const Text('女'),
            groupValue: viewModel.gender,
            onChanged: viewModel.loading ? null : viewModel.onGenderChanged),
        ListTile(
          title: ElevatedButton(
              onPressed: viewModel.loading
                  ? null
                  : () async {
                      final ns = Navigator.of(context);
                      final result = await viewModel.commit();
                      if (result) {
                        ns.pop(true);
                      }
                    },
              child: const Text('保存')),
        )
      ],
    );
  }

  @override
  MyProfileViewModel buildViewModel(BuildContext context) {
    return MyProfileViewModel();
  }

  @override
  String getTitle() {
    return "我的资料";
  }
}
