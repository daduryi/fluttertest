import 'package:fluttertest/env/config.dart';

class EnvConfigDev extends EnvConfig {
  final env = EnumEnv.dev;
  final String api = 'http://192.168.0.238:7001';
  final extParams = {'_debug': 'dev'};
}
