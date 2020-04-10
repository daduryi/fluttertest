import 'dart:convert';
import 'package:crypto/crypto.dart';

class HashUtil {
  static stringMd5(String s) {
    var bytes = utf8.encode(s); // data being hashed
    var digest = md5.convert(bytes);
    return digest.toString();
  }
}

// main(List<String> args) {
//   print(HashUtil.StringMd5('aaaa'));
// }