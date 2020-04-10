import 'package:flutter/cupertino.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:fluttertest/common/global/global.dart';
import 'package:fluttertest/data/app_options.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:fluttertest/i10n/localization_intl.dart';
import 'package:fluttertest/pages/home.dart';

import 'env/config.dart';

void main() async {
  // https://www.cnblogs.com/lxlx1798/articles/11099164.html
  WidgetsFlutterBinding.ensureInitialized();
  await Global.init(EnumEnv.dev);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  DateTime _lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    return ModelBinding(
      initialModel: AppOptions(
        // themeMode: ThemeMode.system,
        // textScaleFactor: systemTextScaleFactorOption,
        // customTextDirection: CustomTextDirection.localeBased,
        locale: null,
        timeDilation: timeDilation,
        // platform: defaultTargetPlatform,
      ),
      child: Builder(
        builder: (context) {
          return CupertinoApp(
            title: 'Flutter Test',
            localizationsDelegates: [
              ...AppLocalizations.localizationsDelegates,
              LocaleNamesLocalizationsDelegate()
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            locale: AppOptions.of(context).locale,
            localeResolutionCallback: (locale, supportedLocales) {
              deviceLocale = locale;
              return locale;
            },
            home: new CupertinoPageScaffold(
              child: new HomePage(),
            ),
          );
        },
      ),
    );
  }
}
