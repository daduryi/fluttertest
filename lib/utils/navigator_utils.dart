import 'package:flutter/cupertino.dart';

class NavigatorUtils {
  static void cupertinoPushRootNavigator(BuildContext context, Widget widget) {
    Navigator.of(context, rootNavigator: true)
        .push(CupertinoPageRoute(builder: (context) => widget));
  }

  ///Page页面的容器，做一次通用自定义
  static Widget pageContainer(widget) {
    return MediaQuery(

        ///不受系统字体缩放影响
        data: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .copyWith(textScaleFactor: 1),
        child: widget);
  }
}
