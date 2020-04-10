import 'package:flutter/cupertino.dart';
import 'package:fluttertest/model/NewsItem.dart';
import 'base.dart';

class NewsItemMixin {
  // final height = null;
}

/*
 * 单标题新闻栏
 * 
 * 中国和世卫组织联合考察报告发布!
 * 置顶 人民网 91评论       x(不感兴趣)
 */
class NewsItemTitle extends StatelessWidget with NewsItemMixin {
  final String title;
  final List<NewsItemOriginModel> originlist;

  NewsItemTitle({
    Key key,
    @required this.title,
    @required this.originlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewsItemContainerWidget(
        height: null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(this.title,
                  maxLines: 3,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(child: NewsItemOriginWidget(originlist: this.originlist)),
          ],
        ));
  }
}

/*
 * 单标题单图
 * 
 * 中国和世卫组织联合考察报告发布!
 * 置顶 人民网 91评论       x(不感兴趣)
 */
class NewsItemTitleIcon extends StatelessWidget with NewsItemMixin {
  final String title;
  final List<NewsItemOriginModel> originlist;
  final String imageurl;

  NewsItemTitleIcon({
    Key key,
    @required this.title,
    @required this.originlist,
    @required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return null;
  }
}

/*
 * 少字单标题单图
 * 
 * 中国和世卫组织联合考察报告发布!
 * 置顶 人民网 91评论       x(不感兴趣)
 */
class NewsItemShortTitleIcon extends StatelessWidget with NewsItemMixin {
  final String title;
  final List<NewsItemOriginModel> originlist;
  final String imageurl;

  NewsItemShortTitleIcon({
    Key key,
    @required this.title,
    @required this.originlist,
    @required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewsItemContainerWidget(
        height: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(this.title,
                        maxLines: 2,
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                      child: NewsItemOriginWidget(originlist: this.originlist)),
                ],
              ),
            ),
            // this.buildOneImage(this.imageurl),
            NewsItemSmallImageWidget(imageurl: this.imageurl),
          ],
        ));
  }
}

/*
 * 多字单标题单图
 * 
 * 中国和世卫组织联合考察报告发布!
 * 置顶 人民网 91评论       x(不感兴趣)
 */
class NewsItemLongTitleIcon extends StatelessWidget with NewsItemMixin {
  final String title;
  final List<NewsItemOriginModel> originlist;
  final String imageurl;

  NewsItemLongTitleIcon({
    Key key,
    @required this.title,
    @required this.originlist,
    @required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewsItemContainerWidget(
        height: 120.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Expanded(
                      child: Text(this.title,
                          maxLines: 3,
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                          ))),
                ),
                NewsItemSmallImageWidget(imageurl: this.imageurl),
              ],
            )),
            Container(child: NewsItemOriginWidget(originlist: this.originlist)),
          ],
        ));
  }
}

/*
 * 单标题三图
 * 
 * 中国和世卫组织联合考察报告发布!
 * image image image
 * 置顶 人民网 91评论       x(不感兴趣)
 */
class NewsItemTitleThreeIcon extends StatelessWidget with NewsItemMixin {
  final String title;
  final List<NewsItemOriginModel> originlist;
  final List<String> imageurls;

  // final height = 120.0;

  NewsItemTitleThreeIcon({
    Key key,
    @required this.title,
    @required this.originlist,
    @required this.imageurls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewsItemContainerWidget(
        height: null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(this.title,
                  maxLines: 2,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NewsItemSmallImageWidget(imageurl: this.imageurls[0]),
                NewsItemSmallImageWidget(imageurl: this.imageurls[1]),
                NewsItemSmallImageWidget(imageurl: this.imageurls[2]),
              ],
            )),
            Container(child: NewsItemOriginWidget(originlist: this.originlist)),
          ],
        ));
  }
}
