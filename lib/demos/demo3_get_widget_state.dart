import 'package:flutter/material.dart';

class GetStateWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => new _CounterWidgetState();
}

class _CounterWidgetState extends State<GetStateWidget> {
  @override
  Widget build(BuildContext context) {
    print("build");

    return Scaffold(
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return RaisedButton(
            onPressed: () {
              // 查找父级最近的Scaffold对应的ScaffoldState对象
              // ScaffoldState _state = context.ancestorStateOfType(TypeMatcher<ScaffoldState>());
              ScaffoldState _state=Scaffold.of(context); 

              //调用ScaffoldState的showSnackBar来弹出SnackBar
              _state.showSnackBar(
                SnackBar(
                  content: Text("我是SnackBar"),
                ),
              );
            },
            child: Text("显示SnackBar of"),
          );
        }),
      ),
    );
  }
}

/**
 * ancestorStateOfType方法
 * ScaffoldState _state = context.ancestorStateOfType(TypeMatcher<ScaffoldState>());
 * 
 * of方法
 * ScaffoldState _state=Scaffold.of(context); 
 * 
 * GlobalKey 方法
//定义一个globalKey, 由于GlobalKey要保持全局唯一性，我们使用静态变量存储
static GlobalKey<ScaffoldState> _globalKey= GlobalKey();
...
Scaffold(
    key: _globalKey , //设置key
    ...  
)
_globalKey.currentState.openDrawer()
globalKey.currentWidget
globalKey.currentElement

 */
