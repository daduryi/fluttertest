import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  // GestureRecognizer _tapRecognizer() {
  //   print('_tapRecognizer');
  // }
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
            RaisedButton(
              child: Text("RaisedButton"),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("FlatButton"),
              onPressed: () {},
            ),
            OutlineButton(
              child: Text("OutlineButton"),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),
            RaisedButton.icon(
              icon: Icon(Icons.send),
              label: Text("发送 RaisedButton with icons"),
              onPressed: _onPressed,
            ),
            OutlineButton.icon(
              icon: Icon(Icons.add),
              label: Text("添加 OutlineButton with icons"),
              onPressed: _onPressed,
            ),
            FlatButton.icon(
              icon: Icon(Icons.info),
              label: Text("详情 FlatButton with icon"),
              onPressed: _onPressed,
            ),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("FlatButton 自定义按钮外观"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
            )
          ],
        ));
  }
}
