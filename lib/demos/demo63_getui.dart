import 'package:flutter/material.dart';
import 'package:fluttertest/common/global/global.dart';

class GetuiRoute extends StatelessWidget {
  init() async {
    await Global.push.init();
    var clientid = await Global.push.getClientId;
    print(clientid);
  }

  getcid() async {
    var clientid = await Global.push.getClientId;
    print(clientid);
  }


  getdevice() async {
    var clientid = await Global.device.udid;
    print(clientid);
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: <Widget>[
        FlatButton(
          child: Text('init'),
          onPressed: init,
        ),
        FlatButton(
          child: Text('getcid'),
          onPressed: getcid,
        ),
        FlatButton(
          child: Text('getdevice'),
          onPressed: getdevice,
        )
      ],
    )));
  }
}
