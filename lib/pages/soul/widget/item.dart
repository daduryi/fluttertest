import 'package:flutter/cupertino.dart';
import 'package:fluttertest/model/SoulItem.dart';
import 'package:fluttertest/model/User.dart';
import 'package:fluttertest/utils/screen_vh_vw_utils.dart';

import 'base.dart';

class SoulItemMixin {
  // final height = null;
}

/*
 * 仅文字
 * 
 * 中国和世卫组织联合考察报告发布!
 * 置顶 人民网 91评论       x(不感兴趣)
 */
class SoulItemTitle extends StatelessWidget with SoulItemMixin {
  final SoulItemModel item;

  SoulItemTitle({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SoulContainerWidget(
      tags: this.item.tags,
      user: this.item.user,
      widget: Text(
        this.item.content,
        maxLines: 4,
      ),
    );
  }
}

class SoulItemPhoto extends StatelessWidget with SoulItemMixin {
  final SoulItemModel item;

  SoulItemPhoto({
    Key key,
    @required this.item,
  }) : super(key: key);

  Widget _buildImage(String url, num vw) {
    return ClipRRect(
      child: Image.network(url, height: VhVwUtil().vw(vw), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(6),
    );
  }

  Widget buildPhoto() {
    if (this.item.photos.length == 1) {
      return _buildImage(this.item.photos[0], 40);
    } else if (this.item.photos.length == 2 || this.item.photos.length == 4) {
      return Container(
          padding: EdgeInsets.only(right: VhVwUtil().vw(22)),
          child: GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            children:
                this.item.photos.map((url) => _buildImage(url, 20)).toList(),
          ));
    } else {
      return GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        children: this.item.photos.map((url) => _buildImage(url, 10)).toList(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    print('liked: ${this.item.liked}');
    return SoulContainerWidget(
        user: this.item.user,
        tags: this.item.tags,
        likecount: this.item.likecount,
        commentcount: this.item.commentcount,
        liked: this.item.liked,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildPhoto(),
            Text(
              this.item.content,
              maxLines: 2,
            ),
          ],
        ));
  }
}
