import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  // GestureRecognizer _tapRecognizer() {
  //   print('_tapRecognizer');

  // }


  final image_sunyang = 'static/images/news_item_sunyang.jpeg';
  _onPressed() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('StatelessWidget'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
                image: AssetImage("static/images/news_item_sunyang.jpeg"),
                width: 100.0),
            Image.asset(
              // 上边一个快捷的构造函数
              "static/images/news_item_sunyang.jpeg",
              width: 100.0,
            ),
            Image(
              image: NetworkImage(
                  "http://cdn-app-qn.colorv.cn/users/oM6A/db99468e0b7941c39b39fad2979c1573"),
              width: 100.0,
            ),
            Image.network(
              "http://cdn-app-qn.colorv.cn/users/oM6A/db99468e0b7941c39b39fad2979c1573",
              width: 100.0,
            ),
            Image(
  image: AssetImage(image_sunyang),
  width: 100.0,
  color: Colors.blue,
  colorBlendMode: BlendMode.difference,
),
Image(
  image: AssetImage(image_sunyang),
  width: 100.0,
  height: 120.0,
  repeat: ImageRepeat.repeatY ,
)

          ],
        ));
  }
}
