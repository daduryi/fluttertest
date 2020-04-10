import 'package:flutter/cupertino.dart';
import 'package:fluttertest/model/NewsItem.dart';
import 'package:fluttertest/pages/news/news_info.dart';
import 'package:fluttertest/utils/navigator_utils.dart';
import 'package:fluttertest/utils/request_utils.dart';
import 'package:fluttertest/utils/screen_vh_vw_utils.dart';
import 'package:fluttertest/utils/ui_utils.dart';

/*
 * 来源栏widget
 * 置顶 人民网 91评论       x(不感兴趣)
 */
class NewsItemOriginWidget extends StatelessWidget {
  final List<NewsItemOriginModel> originlist;
  final defaultColor = Color(0xFFB0B0B0);

  NewsItemOriginWidget({
    Key key,
    @required this.originlist,
  }) : super(key: key);

  List<Widget> genColumn() {
    List<Widget> originlistWidget = [];
    for (var origin in this.originlist) {
      originlistWidget.add(Text(
        origin.text + ' ',
        style: TextStyle(color: origin.color != null ? ColorUtil.toColor(origin.color) : defaultColor, fontSize: 10.0),
      ));
    }
    return originlistWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 1.0),
        height: 14.0,
        child: Row(
          children: genColumn(),
        ));
  }
}

class NewsItemContainerWidget extends StatelessWidget {
  final double height;
  final Widget child;

  NewsItemContainerWidget({
    Key key,
    @required this.height,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: this.height,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
          child: this.child,
        ),
        onTap: () {
          NavigatorUtils.cupertinoPushRootNavigator(context, NewsInfoWidget());
        });
  }
}

class NewsItemSmallImageWidget extends StatelessWidget {
  final String imageurl;

  NewsItemSmallImageWidget({
    Key key,
    @required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: VhVwUtil().vmin(1)),
        child: Image.network(imageurl,
            height: VhVwUtil().vw(20),
            width: VhVwUtil().vw(30),
            fit: BoxFit.cover));
  }
}
