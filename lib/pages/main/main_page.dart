import 'package:flutter/material.dart';
import 'package:music/pages/home/home_page.dart';
import 'package:music/pages/main/main_view_model.dart';
import 'package:music/pages/messages/messages_page.dart';
import 'package:music/pages/mine/mine_page.dart';
import 'package:music/widget/music_banner.dart';
import 'package:provider/provider.dart';

import '../user_playlist/user_playlist_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Consumer<MainViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: IndexedStack(
                    index: viewModel.index,
                    children: const [
                      HomePage(),
                      MessagesPage(),
                      UserPlayListPage(),
                      MinePage(),
                    ],
                  ),
                ),
                const MusicBanner(),
              ],
            ),
            bottomNavigationBar:
                // NavigationBar(
                //   destinations: const [
                //     NavigationDestination(icon: Icon(Icons.home), label: '首页'),
                //     NavigationDestination(icon: Icon(Icons.message), label: '消息'),
                //     NavigationDestination(
                //         icon: Icon(Icons.music_note), label: '歌单'),
                //     NavigationDestination(
                //         icon: Icon(Icons.account_circle_outlined), label: '我的'),
                //   ],
                //   selectedIndex: viewModel.index,
                //   onDestinationSelected: viewModel.updateIndex,
                // )
                BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: viewModel.index,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
                BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.music_note), label: "歌单"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined), label: "我的"),
              ],
              onTap: viewModel.updateIndex,
            ),
          );
        },
      ),
    );
  }
}
