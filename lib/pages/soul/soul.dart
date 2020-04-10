import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/api/soul.dart';
import 'package:fluttertest/model/SoulItem.dart';
import 'package:fluttertest/pages/soul/widget/item.dart';

/**
 * 1. 下拉刷新/加载更多loadmore
 * https://www.jianshu.com/p/7faf0e4ad7c3
 * 2. 加载更多为什么很慢?
 */
class SoulWidget extends StatefulWidget {
  SoulWidget({Key key}) : super(key: key);

  @override
  _SoulWidgetState createState() => new _SoulWidgetState();
}

class _SoulWidgetState extends State<SoulWidget> {
  List<SoulItemModel> _items = [];

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

  Future<List<SoulItemModel>> _getItems() async {
    final dataMode =
        await SoulApiService().getSouls(start: _items.length, length: 20);
    final items = dataMode.items;
    print(items);
    setState(() {
      _items.addAll(items);
    });
    return items;
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

  _renderItem(index) {
    if (index >= _items.length) {
      return null;
    }
    var item = _items[index];

    if (item.photos.length > 0) {
      return SoulItemPhoto(item: item);
    } else {
      return SoulItemTitle(item: item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: RefreshIndicator(
            onRefresh: _refresh,
            child: ListView.builder(
              shrinkWrap: true,
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
