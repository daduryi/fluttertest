import 'package:fluttertest/api/baseApi.dart';
import 'package:fluttertest/model/SoulItem.dart';
import 'package:fluttertest/utils/request_utils.dart';

class SoulApiService extends BaseApi {
  Future<SoulItemsDataModel> getSouls({start: 0, length: 20}) async {
    var url = this.getUrl('/api/flutter/soul');
    var params = {'start': start, 'length': length};

    var data = await MyRequest.getData(url, params: params);
    return SoulItemsDataModel.fromJson(data);
  }

  Future<SoulItemsDataModel> likeSoul({start: 0, length: 20}) async {
    var url = this.getUrl('/api/flutter/soul/like');
    var params = {'start': start, 'length': length};

    var data = await MyRequest.getData(url, params: params);
    return SoulItemsDataModel.fromJson(data);
  }

  Future<SoulItemsDataModel> unlikeSoul({start: 0, length: 20}) async {
    var url = this.getUrl('/api/flutter/soul/unlike');
    var params = {'start': start, 'length': length};

    var data = await MyRequest.getData(url, params: params);
    return SoulItemsDataModel.fromJson(data);
  }

  Future<SoulItemsDataModel> commentSoul({start: 0, length: 20}) async {
    var url = this.getUrl('/api/flutter/soul/unlike');
    var params = {'start': start, 'length': length};

    var data = await MyRequest.getData(url, params: params);
    return SoulItemsDataModel.fromJson(data);
  }

  Future<SoulItemsDataModel> getSoulComments({start: 0, length: 20}) async {
    var url = this.getUrl('/api/flutter/soul/unlike');
    var params = {'start': start, 'length': length};

    var data = await MyRequest.getData(url, params: params);
    return SoulItemsDataModel.fromJson(data);
  }
}
