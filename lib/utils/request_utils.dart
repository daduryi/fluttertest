import 'package:dio/dio.dart';
import 'package:fluttertest/common/global/global.dart';
import 'package:fluttertest/model/base.dart';
import 'package:fluttertest/widget/toast.dart';

/**
 * 不使用net的封装
 * 接口入参屏蔽dio
 */

class MyRequestOption {
  MyRequestOption({
    toastAll: false,
    toastError: true,
  });
}

class MyRequest {
  static Dio dio = new Dio();
  static Future<T> getDataModel<T>(
      dynamic model, String path, Map<String, dynamic> params,
      {MyRequestOption options}) async {
    var response = await dio.get(path);
    return model.fromJson(response.data['data']);
  }

  static ins_response(Response response) {
    if (response.statusCode >= 500) {
      MyToast.toast('服务器错误,请稍后再试');
      return null;
    }
    final data = ApiBaseModel(response.data['code'], response.data['messages'],
        response.data['data']);
    if (data.code == 401) {
      MyToast.toast('请登录');
      return null;
    }
    if (data.code != 0) {
      MyToast.toast(data.message);
      return null;
    }
    return response.data['data'];
  }

  static Future jsonData(String path, Map<String, dynamic> data,
      {Map<String, dynamic> params, MyRequestOption options}) async {
    if (Global.config.isDebug) {
      params = params == null ? {} : params;
      params.addAll({'_debug': 'dev'});
    }

    Options options = Options(headers: {'Content-type': 'application/json'});
    var response = await dio.post(path,
        data: data, queryParameters: params, options: options);
    return ins_response(response);
  }

  static Future getData(String path,
      {Map<String, dynamic> params, MyRequestOption options}) async {
    if (Global.config.isDebug) {
      params.addAll({'_debug': 'dev'});
    }
    var response = await dio.get(path, queryParameters: params);
    return ins_response(response);
  }
}
