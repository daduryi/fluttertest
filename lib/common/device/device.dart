import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:fluttertest/common/global/global.dart';
import 'package:fluttertest/utils/hash_utils.dart';
import 'package:uuid/uuid.dart';

abstract class MyDevice {
  static MyDevice _device;
  factory MyDevice() {
    if (MyDevice._device == null) {
      if (Platform.isAndroid) {
        MyDevice._device = _MyDeviceAnd();
      } else if (Platform.isIOS) {
        MyDevice._device = _MyDeviceIos();
      } else {
        throw 'Can\'t create instance os GetuiPush: ${Platform.operatingSystem}';
      }
    }
    return MyDevice._device;
  }

  String get udid;
  getDeviceInfo();
  Future<void> init();
  // get _deviceInfo;
  get deviceInfo;
}

class _MyDeviceAnd implements MyDevice {
  var _instance;
  String _udid;

  @override
  Future<void> init() async {
    await getDeviceInfo();
  }

  getDeviceInfo() async {
    if (_instance == null) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      print('Running on ${androidInfo.model}');
      _instance = androidInfo;
    }

    return _instance;
  }

  get deviceInfo {
    assert(_instance != null);
    return this._instance;
  }

  String _genDeivceId() {
    String iden;
    final uuid = Uuid();
    iden = uuid.v4();
    return HashUtil.stringMd5(iden);
  }

  @override
  get udid {
    if (_udid == null) {
      var udid = Global.pref.get('udid');
      if (udid == null) {
        udid = _genDeivceId();
        Global.pref.save('udid', udid);
      }
      _udid = udid;
    }
    return _udid;
  }
}

class _MyDeviceIos implements MyDevice {
  var _instance;
  getDeviceInfo() async {
    if (_instance == null) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      print('Running on ${iosInfo.utsname.machine}');
      _instance = iosInfo;
    }
    return _instance;
  }

  get deviceInfo {
    assert(_instance != null);
    return this._instance;
  }

  get udid {
    return '';
  }

  @override
  Future<void> init() async {
    await getDeviceInfo();
  }
}
