import 'package:fluttertest/api/baseApi.dart';
import 'package:fluttertest/model/ret.dart';
import 'package:fluttertest/utils/request_utils.dart';

class ServiceApiService extends BaseApi {
  Future<RetModel> getui(String cid, String udid) async {
    var url = this.getUrl('/api/flutter/register/getui');
    var data = {
      'cid': cid,
      'udid': udid,
    };

    var rdata = await MyRequest.jsonData(url, data);
    return RetModel.fromJson(rdata);
  }
}
