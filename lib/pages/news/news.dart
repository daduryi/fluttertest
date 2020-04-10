import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/api/news.dart';
import 'package:fluttertest/model/NewsItem.dart';
import 'package:fluttertest/pages/news/widget/newsitem/newsitem.dart';

/**
 * 1. 下拉刷新/加载更多loadmore
 * https://www.jianshu.com/p/7faf0e4ad7c3
 * 2. 加载更多为什么很慢?
 */
class NewsWidget extends StatefulWidget {
  NewsWidget({Key key}) : super(key: key);

  @override
  _NewsWidgetState createState() => new _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  List<NewsItemModel> _items = [];

  bool isPerformingRequest = false;
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadMoreItems();
      }
    });
    _getItems();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<List<NewsItemModel>> _getItems() async {
    final dataMode =
        await NewsApiService().getNews(start: _items.length, length: 20);
    final items = dataMode.items;
    print(items);
    setState(() {
      _items.addAll(items);
    });
    return items;
  }

  _renderItem(index) {
    if (index >= _items.length) {
      return null;
    }
    var item = _items[index];
    switch (item.type) {
      case EnumNewsItemType.title:
        return NewsItemTitle(title: item.title, originlist: item.originlist);
      case EnumNewsItemType.title_photo_1:
        return NewsItemLongTitleIcon(
            imageurl: item.photo,
            title: item.title,
            originlist: item.originlist);
      case EnumNewsItemType.title_photo_3:
        return NewsItemTitleThreeIcon(
            title: item.title,
            originlist: item.originlist,
            imageurls: item.photos);
      default:
        return null;
    }
  }

  Future<Null> _refresh() async {
    _items.clear();
    await _getItems();
  }

  Future<Null> _loadMoreItems() async {
    print('_loadMoreItems');
    if (!isPerformingRequest) {
      setState(() => isPerformingRequest = true);
      var newitems = await _getItems();
      setState(() => isPerformingRequest = false);
      if (newitems.isEmpty) {
        double edge = 50.0;
        double offsetFromBottom = _scrollController.position.maxScrollExtent -
            _scrollController.position.pixels;
        if (offsetFromBottom < edge) {
          _scrollController.animateTo(
              _scrollController.offset - (edge - offsetFromBottom),
              duration: new Duration(milliseconds: 500),
              curve: Curves.easeOut);
        }
      }
    } else {
      print('isPerformingRequest is true');
    }
  }

  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Opacity(
          opacity: isPerformingRequest ? 1.0 : 0.0,
          child: new CircularProgressIndicator(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: RefreshIndicator(
            onRefresh: _refresh,
            child: ListView.builder(
              itemCount: _items.length + 1,
              padding: const EdgeInsets.all(0),
              itemBuilder: (BuildContext context, int index) {
                if (index == _items.length) {
                  return _buildProgressIndicator();
                } else {
                  return _renderItem(index);
                }
              },
              controller: _scrollController,
            )));
  }
}
