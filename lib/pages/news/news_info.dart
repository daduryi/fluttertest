import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return SafeArea(child:);

    return new CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('news info'),
          previousPageTitle: '',
        ), // 顶栏title
        child: SafeArea(child: Text('news info widget')),
    );
  }
}
