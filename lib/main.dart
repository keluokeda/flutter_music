import 'package:event_bus/event_bus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:music/api/http_service.dart';
import 'package:music/pages/album_detail/album_detail_page.dart';
import 'package:music/pages/album_square/album_square_page.dart';
import 'package:music/pages/artist_detail/artist_detail_page.dart';
import 'package:music/pages/artist_list/artist_list_page.dart';
import 'package:music/pages/cloud/cloud_page.dart';
import 'package:music/pages/common/download_view_model.dart';
import 'package:music/pages/common/music_view_model.dart';
import 'package:music/pages/common/theme_view_model.dart';
import 'package:music/pages/download_management/download_management_page.dart';
import 'package:music/pages/login/login_page.dart';
import 'package:music/pages/main/main_page.dart';
import 'package:music/pages/messages/messages_page.dart';
import 'package:music/pages/mv/mv_play_page.dart';
import 'package:music/pages/mv_square/mv_square_page.dart';
import 'package:music/pages/my_profile/my_profile_page.dart';
import 'package:music/pages/playlist_category/playlist_category_page.dart';
import 'package:music/pages/playlist_detail/playlist_detail_page.dart';
import 'package:music/pages/playlist_info/playlist_info_page.dart';
import 'package:music/pages/playlist_info_edit/playlist_info_edit_page.dart';
import 'package:music/pages/playlist_new/playlist_new_page.dart';
import 'package:music/pages/playlist_search/playlist_search_page.dart';
import 'package:music/pages/playlist_square/playlist_square_page.dart';
import 'package:music/pages/playlist_subscribers/playlist_subscribers_page.dart';
import 'package:music/pages/recommend_songs/recommend_songs_page.dart';
import 'package:music/pages/send_message/send_message_page.dart';
import 'package:music/pages/songs_edit/songs_edit_page.dart';
import 'package:music/pages/splash/splash_page.dart';
import 'package:music/pages/user_list/user_list_page.dart';
import 'package:music/pages/user_playlist/user_playlist_page.dart';
import 'package:music/pages/user_playlist_list/user_playlist_list_page.dart';
import 'package:music/widget/music_banner.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

import 'api/data_store.dart';
import 'pages/message_history/message_history_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DataStore.instance.init();
  await HttpService.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => MusicViewModel()),
          ChangeNotifierProvider(create: (_) => ThemeViewModel()),
          ChangeNotifierProvider(create: (_) => DownloadViewModel()),
        ],
        child: buildMaterialApp(),
      ),
    );
  }

  Widget buildMaterialApp() {
    return Consumer<ThemeViewModel>(builder: (context, viewModel, _) {
      return MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('zh', 'CN'),
          Locale('en', 'US'),
        ],
        routes: {
          '/app/login': (_) => const LoginPage(),
          '/app/send/message': (_) => const SendMessagePage(),
          '/message/history': (_) => const MessageHistoryPage(),
          '/artist/list': (_) => const ArtistListPage(),
          '/app/mv': (_) => const MVPlayPage(),
          '/mv/all': (_) => const MVSquarePage(),
          '/user/cloud': (_) => const CloudPage(),
          '/app/splash': (_) => const SplashPage(),
          '/app/test': (_) => const MyHomePage(title: '首页'),
          '/app/messages': (_) => const MessagesPage(),
          '/recommend/songs': (_) => const RecommendSongsPage(),
          '/app/album': (_) => const AlbumDetailPage(),
          '/user/playlist': (_) => const UserPlayListPage(),
          '/playlist/subscribers': (_) => const PlaylistSubscribersPage(),
          '/playlist/selected': (_) => const UserPlaylistListPage(),
          '/playlist/new': (_) => const PlaylistNewPage(),
          '/playlist/info/edit': (_) => const PlaylistInfoEditPage(),
          '/playlist/detail': (_) => const PlaylistDetailPage(),
          '/playlist/info': (_) => const PlaylistInfoPage(),
          '/playlist/search': (_) => const PlaylistSearch(),
          '/playlist/square': (_) => const PlaylistSquarePage(),
          '/playlist/category': (_) => const PlaylistCategoryPage(),
          '/songs/edit': (_) => const SongsEditPage(),
          '/artist/detail': (_) => const ArtistDetailPage(),
          '/download/management': (_) => const DownloadManagementPage(),
          '/app/main': (_) => const MainPage(),
          '/album/square': (_) => const AlbumSquarePage(),
          '/user/list': (_) => const UserListPage(),
          '/mine/profile': (_) => const MyProfilePage()
        },
        title: '网易云音乐',
        theme: (viewModel.darkTheme
                ? ThemeData.dark(useMaterial3: true)
                : ThemeData.light(useMaterial3: true))
            .copyWith(appBarTheme: const AppBarTheme(elevation: 5)),
        initialRoute: '/app/splash',
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Consumer<MusicViewModel>(builder: (context, viewModel, _) {
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text('扫码登录'),
                    onTap: () {
                      Navigator.of(context).pushNamed('/app/login');
                    },
                  ),
                  ListTile(
                    title: const Text('检查登录状态'),
                    onTap: () async {
                      final result =
                          await HttpService.instance.getLoginStatus();
                      if (kDebugMode) {
                        print('登录状态结果 $result');
                      }
                    },
                  ),
                  ListTile(
                    title: const Text('用户退出'),
                    onTap: () async {
                      final result = await HttpService.instance.logout();
                      if (kDebugMode) {
                        print('登出结果 $result');
                      }
                    },
                  ),
                  ListTile(
                    title: const Text('消息列表'),
                    onTap: () {
                      Navigator.of(context).pushNamed('/app/messages');
                    },
                  ),
                  ListTile(
                    title: const Text('每日推荐'),
                    onTap: () {
                      Navigator.of(context).pushNamed('/recommend/songs');
                    },
                  ),
                  ListTile(
                    title: const Text('专辑详情'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('/app/album', arguments: 16357);
                    },
                  ),
                  ListTile(
                    title: const Text('用户歌单'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('/user/playlist', arguments: 16357);
                    },
                  ),
                  ListTile(
                    title: const Text('歌单广场'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('/playlist/square', arguments: 8256084515);
                    },
                  ),
                  ListTile(
                    title: const Text('切换主题'),
                    onTap: () {
                      context.read<ThemeViewModel>().toggleTheme();
                    },
                  ),
                  ListTile(
                    title: const Text('歌手详情'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('/artist/detail', arguments: 5427);
                    },
                  ),
                  ListTile(
                    title: const Text('下载管理'),
                    onTap: () {
                      Navigator.of(context).pushNamed('/download/management');
                    },
                  ),
                  ListTile(
                    title: const Text('首页'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/app/main');
                    },
                  ),
                  const MusicBanner(),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

final EventBus eventBus = EventBus();

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

extension IntExtension on int {
  String formatNumber({bool needDecimal = true}) {
    if (this < 10000) {
      return toString();
    }
    if (!needDecimal) {
      return "${this ~/ 10000}万";
    }

    return "${this ~/ 10000}.${(this % 10000) ~/ 1000 % 10}万";
  }

  String formatDuration() {
    final second = this ~/ 1000;
    return "${second ~/ 60}:${second % 60}";
  }
}
