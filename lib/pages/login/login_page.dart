import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/common/base_content_page.dart';
import 'package:music/pages/login/login_view_model.dart';
import 'package:qr_flutter/qr_flutter.dart';

class LoginPage extends BaseContentPage<LoginViewModel, String> {
  const LoginPage({super.key});

  @override
  Widget buildContent(
      BuildContext context, String data, LoginViewModel viewModel) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: QrImage(
            data: data,
          ),
        ),
        ListTile(
          title: ElevatedButton(
              onPressed: viewModel.inLogin
                  ? null
                  : () async {
                final ns = Navigator.of(context);
                      final result = await viewModel.checkLoginResult();
                      if (kDebugMode) {
                        print('登录结果 = $result');
                      }
                      if(result){
                        ns.pushReplacementNamed('/app/test');
                      }
                    },
              child: const Text('我已扫码')),
        ),
        ListTile(
          title: OutlinedButton(
              onPressed: viewModel.inLogin ? null : viewModel.loadContent,
              child: const Text('刷新二维码')),
        ),
        if (viewModel.inLogin)
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            child: const CircularProgressIndicator(),
          )
      ],
    );
  }

  @override
  LoginViewModel buildViewModel(BuildContext context) {
    return LoginViewModel();
  }

  @override
  String getTitle() {
    return "扫码登录";
  }
}
