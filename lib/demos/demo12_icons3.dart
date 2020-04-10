import 'package:flutter/material.dart';

// https://material.io/resources/icons/?style=baseline

class IconFontWidget extends StatelessWidget {
  // GestureRecognizer _tapRecognizer() {
  //   print('_tapRecognizer');
  // }

  var img = AssetImage("static/images/news_item_sunyang.jpeg");

  @override
  Widget build(BuildContext context) {
    String icons = "";
// accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return Scaffold(
        appBar: new AppBar(
          title: new Text('sdf'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green),
            ),
            Icon(
              Icons.accessible,
              color: Colors.green,
            ),
            Icon(
              Icons.error,
              color: Colors.green,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.green,
            ),
          ],
        ));
  }
}
