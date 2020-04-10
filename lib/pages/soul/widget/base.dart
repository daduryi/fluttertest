import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/model/CommonModel.dart';
import 'package:fluttertest/model/User.dart';
import 'package:fluttertest/utils/screen_vh_vw_utils.dart';

/*
 * 来源栏widget
 * 置顶 人民网 91评论       x(不感兴趣)
 */
class SoulBaseWidget {
  final edgeLeft = 14;
}

class SoulUserHeaderWidget extends StatelessWidget with SoulBaseWidget {
  final UserModel user;
  final iconRedius = 6;

  SoulUserHeaderWidget({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment(-1, 0),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(
                    right: VhVwUtil().vw(this.edgeLeft - this.iconRedius * 2)),
                child: CircleAvatar(
                    radius: VhVwUtil().vw(this.iconRedius),
                    backgroundImage: NetworkImage(this.user.icon))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(this.user.name),
                Text(this.user.desc == null ? '' : this.user.desc,
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
              ],
            ),
          ],
        ));
  }
}

class SoulContainerWidget extends StatelessWidget with SoulBaseWidget {
  final UserModel user;
  final Widget widget;
  final List<TagModel> tags;

  final num likecount;
  final num commentcount;
  bool liked;

  SoulContainerWidget({
    Key key,
    @required this.user,
    @required this.widget,
    @required this.tags,
    @required this.likecount,
    @required this.commentcount,
    this.liked = false,
  }) : super(key: key);

  _pressed() {}

  Widget _buildTag(TagModel tag) {
    return Container(
        padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1)),
        child: Text('#' + tag.name + '',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)));
  }

  Widget _buildTool(context) {
    this.liked = this.liked == null ? false : this.liked;
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(children: <Widget>[
          Icon(
            Icons.share,
          ),
          Text('1')
        ]),
        Expanded(
          flex: 3,
          child: Container(),
        ),
        Row(children: <Widget>[
          Icon(
            this.liked ? Icons.favorite : Icons.favorite_border,
            color: this.liked ? Colors.red : null,
          ),
          Text('1')
        ]),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Row(children: <Widget>[
          Icon(
            Icons.comment,
          ),
          Text('1')
        ]),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SoulUserHeaderWidget(user: this.user),
            Container(
              alignment: Alignment(-1, 0),
              margin: EdgeInsets.only(
                  left: VhVwUtil().vw(this.edgeLeft), bottom: 6),
              child: this.widget,
            ),
            Container(
                margin: EdgeInsets.only(
                    left: VhVwUtil().vw(this.edgeLeft), bottom: 6),
                child: Row(
                  children: this.tags.map((tag) => _buildTag(tag)).toList(),
                )),
            Container(
              margin: EdgeInsets.only(left: VhVwUtil().vw(this.edgeLeft)),
              child: _buildTool(context),
            )
          ],
        ));
  }
}
