import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertest/common/device/camera.dart';
import 'package:fluttertest/common/global/global.dart';
import 'package:fluttertest/demos/index.dart';
import 'package:fluttertest/i10n/localization_intl.dart';
import 'package:fluttertest/pages/news/news.dart';
import 'package:fluttertest/pages/soul/soul.dart';
import 'package:fluttertest/utils/screen_vh_vw_utils.dart';

class _TabInfo {
  const _TabInfo(this.title, this.icon, this.body);
  final String title;
  final IconData icon;
  final Widget body;

  @override
  String toString() {
    return 'toString: $title $body';
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _lastPressedAt; //上次点击时间

  Future<bool> _onWillPop() async {
    if (_lastPressedAt == null ||
        DateTime.now().difference(_lastPressedAt) > Duration(seconds: 2)) {
      //两次点击间隔超过1秒则重新计时
      _lastPressedAt = DateTime.now();
      print('Warning: will exit app!');
      return false;
    }
    print('Warning: will exit app!!');
    return true;
  }

  Future<bool> _onWillPopDialog() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('退出App?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('不'),
              ),
              new FlatButton(
                onPressed: () async {
                  await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                child: new Text('是的'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    Global.initContext(context);
    // Global.init();

    final _tabInfo = [
      _TabInfo(AppLocalizations.of(context).cupertinoTabBarHomeTab,
          CupertinoIcons.home, MyDemoButtonPage()),
      _TabInfo(AppLocalizations.of(context).cupertinoTabBarChatTab,
          CupertinoIcons.conversation_bubble, SoulWidget()),
      _TabInfo(
        AppLocalizations.of(context).cupertinoTabBarDiscoveryTab,
        CupertinoIcons.profile_circled,
        NewsWidget(),
      ),
      _TabInfo(
        AppLocalizations.of(context).cupertinoTabBarProfileTab,
        CupertinoIcons.profile_circled,
        NewsWidget(),
      ),
    ];

    return WillPopScope(
        onWillPop: _onWillPop,
        child: Container(
            child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              for (final tabInfo in _tabInfo)
                BottomNavigationBarItem(
                  title: Text(tabInfo.title),
                  icon: Icon(tabInfo.icon),
                ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (context) => _CupertinoDemoTab(
                title: _tabInfo[index].title,
                icon: _tabInfo[index].icon,
                widget: _tabInfo[index].body,
              ),
              defaultTitle: _tabInfo[index].title,
            );
          },
        )));
  }
}

class _CupertinoDemoTab extends StatelessWidget {
  const _CupertinoDemoTab({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.widget,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigationBar: CupertinoNavigationBar(), // 顶栏title
      backgroundColor: CupertinoColors.systemBackground,
      //这里需要加SafeArea，不然child的垂直会是从屏目顶部开始
      //加了SafeArea后是从NvBar下方开始
      child: SafeArea(child: this.widget),
    );
  }
}
