import 'package:fluttertest/api/baseApi.dart';
import 'package:fluttertest/model/NewsItem.dart';
import 'package:fluttertest/utils/request_utils.dart';

class NewsApiService extends BaseApi {
    
  Future<NewsItemsDataModel> getNews({start: 0, length: 20}) async {
    var url = this.getUrl('/api/flutter/news');
    var params = {
      'start': start,
      'length': length
    };

    var data = await MyRequest.getData(url, params: params);
    return NewsItemsDataModel.fromJson(data);
  }
}