import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'messages_all.dart';

class AppLocalizations {
  // AppLocalizations(Locale locale)
  //     : _localeName = Intl.canonicalizedLocale(locale.toString());

  // final String _localeName;

  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(locale.toString())
        .then<AppLocalizations>((_) => AppLocalizations());
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('en', 'US'), // 美国英语
    Locale('zh', 'CN'), // 大陆中文
  ];

  String get title {
    return Intl.message(
      'Flutter APP',
      name: 'title',
      desc: 'Title for the Demo application',
    );
  }

  remainingEmailsMessage(int howMany) => Intl.plural(howMany,
      zero: 'There are no emails left',
      one: 'There is $howMany email left',
      other: 'There are $howMany emails left',
      name: "remainingEmailsMessage",
      args: [howMany],
      desc: "How many emails remain after archiving.",
      examples: const {'howMany': 42, 'userName': 'Fred'});

  String get appHelloWorld {
    return Intl.message('HelloWold',
        name: 'appHelloWorld', desc: 'Hello World Text');
  }

  String get cupertinoTabBarHomeTab {
    return Intl.message('首页',
        name: 'cupertinoTabBarHomeTab',
        desc: 'Title for the home tab in the bottom tab bar demo.');
  }

  String get cupertinoTabBarChatTab {
    return Intl.message('聊天',
        name: 'cupertinoTabBarChatTab',
        desc: 'Title for the chat tab in the bottom tab bar demo.');
  }

  String get cupertinoTabBarDiscoveryTab {
    return Intl.message('发现',
        name: 'cupertinoTabBarDiscoveryTab',
        desc: 'Title for the discovery tab in the bottom tab bar demo.');
  }

  String get cupertinoTabBarProfileTab {
    return Intl.message('个人',
        name: 'cupertinoTabBarProfileTab',
        desc: 'Title for the profile tab in the bottom tab bar demo.');
  }
}

//Locale代理类
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  //是否支持某个Local
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  // Flutter会调用此类加载相应的Locale资源类
  @override
  Future<AppLocalizations> load(Locale locale) {
    //3
    return AppLocalizations.load(locale);
  }

  // 当Localizations Widget重新build时，是否调用load重新加载Locale资源.
  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
