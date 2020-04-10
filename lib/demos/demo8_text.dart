import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  // GestureRecognizer _tapRecognizer() {
  //   print('_tapRecognizer');
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('StatelessWidget'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "TextAlign.left; Hello world" * 3,
              textAlign: TextAlign.left,
            ),
            Text(
              "TextAlign.center; Hello world" * 3,
              textAlign: TextAlign.center,
            ),
            Text(
              "maxLines 1, TextOverflow.ellipsis; Hello world! I'm Jack. " * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Hello world textScaleFactor: 1.5",
              textScaleFactor: 1.5,
            ),
            Text(
              "TextStyle, Hello world1",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "Home: "),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.blue),
                // recognizer: Recognizer()
              ),
            ])),
            DefaultTextStyle(
              //1.设置文本默认样式
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("设置文本默认样式 hello world"),
                  Text("DefaultTextStyle am Jack"),
                  Text(
                    " 设置文本默认样式 inherit:false I am Jack",
                    style: TextStyle(
                        inherit: false, //2.不继承默认样式
                        color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
