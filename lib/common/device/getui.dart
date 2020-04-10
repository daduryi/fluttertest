import 'dart:io';
import 'dart:math';
import 'package:fluttertest/api/service.dart';
import 'package:fluttertest/common/global/global.dart';
import 'package:fluttertest/utils/request_utils.dart';
import 'package:getuiflut/getuiflut.dart';

// /**
//  * https://github.com/GetuiLaboratory/getui-flutter-plugin
//  */
abstract class MyGetuiPush {
  static MyGetuiPush _push;

  factory MyGetuiPush() {
    if (MyGetuiPush._push == null) {
      if (Platform.isAndroid) {
        MyGetuiPush._push = _GetuiPushAnd();
      } else if (Platform.isIOS) {
        MyGetuiPush._push = _GetuiPushIos();
      } else {
        throw 'Can\'t create instance os GetuiPush: ${Platform.operatingSystem}';
      }
    }
    return MyGetuiPush._push;
  }

  Future<void> init();
  Future<String> get getClientId;
}

class GetuiPushMixin {
  addListener() {
      Getuiflut().addEventHandler(
      onReceiveClientId: (String cid) async {
        var udid = Global.device.udid;
        ServiceApiService().getui(cid, udid);
      },
      onReceiveMessageData: (Map<String, dynamic> msg) async {
        print("flutter onReceiveMessageData: $msg"); // 透传消息的内容都会走到这里
      },
      onNotificationMessageArrived: (Map<String, dynamic> msg) async {
        print("flutter onNotificationMessageArrived"); // 消息到达的回调
      },
      onNotificationMessageClicked: (Map<String, dynamic> msg) async {
        print("flutter onNotificationMessageClicked"); // 消息点击的回调
      },
    );
  }
}

class _GetuiPushAnd  with GetuiPushMixin implements MyGetuiPush {
  @override
  Future<void> init() async {
    addListener();
    await Getuiflut.initGetuiSdk;
  }

  @override
  Future<String> get getClientId => Getuiflut.getClientId;
}

class _GetuiPushIos implements MyGetuiPush {
  @override
  Future<void> init() async {
    Getuiflut().startSdk(
        appId: "7pKPkf7EcV5rxYddQ01iz8",
        appKey: "VfhwvYYWwa5ytctyoTPoD8",
        appSecret: "JirK1xNYRK8ErvjX5pzN7");
  }

  Future<String> get getClientId => Getuiflut.getClientId;
}
