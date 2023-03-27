import 'package:flutter/material.dart';
import 'package:music/api/data_store.dart';
import 'package:music/api/http_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    final ns = Navigator.of(context);
    await DataStore.instance.init();
    await HttpService.instance.init();

    final entity = await HttpService.instance.getLoginStatus();
    if (entity == null || entity.data?.profile == null) {
      //没有登录 登录页面
      ns.pushReplacementNamed('/app/login');
    } else {
      await DataStore.instance.saveUserId(entity.data?.profile?.userId ?? 0);
      ns.pushReplacementNamed('/app/test');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const FlutterLogo();
  }
}
