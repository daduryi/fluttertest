import 'package:fluttertest/env/config.dart';

class EnvConfigProd extends EnvConfig {
  final env = EnumEnv.prod;
  final String api = 'http://api.wusixi.com';
}