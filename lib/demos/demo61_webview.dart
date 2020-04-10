import 'package:flutter/material.dart';
import 'package:fluttertest/widget/webview.dart';

class PlatformViewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyWebViewWidget(url: 'https://flutterchina.club');
  }
  // @override
  // Widget build(BuildContext context) {
  //   return WebView(
  //     initialUrl: "https://flutterchina.club",
  //     javascriptMode: JavascriptMode.unrestricted,
  //   );
  // }

}
