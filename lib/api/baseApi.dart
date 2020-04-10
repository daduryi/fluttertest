import 'package:fluttertest/common/global/global.dart';

abstract class BaseApi {

  getUrl(String path) {
    assert(path.startsWith('/'));
    return Global.config.api + path;
  }

}