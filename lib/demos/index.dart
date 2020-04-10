import 'package:flutter/material.dart';
import 'package:fluttertest/pages/news/news.dart';
import 'package:fluttertest/utils/navigator_utils.dart';

import 'demo10_icons.dart';
import 'demo11_icons2.dart';
import 'demo12_icons3.dart';
import 'demo13_switch_checkbox.dart';
import 'demo14_TextField_form.dart';
import 'demo15_ProgressIndicator.dart';
import 'demo16_ProgressIndicator2.dart';
import 'demo17_row_column.dart';
import 'demo18_flex.dart';
import 'demo19_wrap.dart';
import 'demo1_stateless.dart';
import 'demo20_flow.dart';
import 'demo21_stack.dart';
import 'demo22_stack.dart';
import 'demo23_align.dart';
import 'demo24_padding.dart';
import 'demo2_stateful.dart';
import 'demo30_scaffod.dart';
import 'demo3_get_widget_state.dart';
import 'demo40_InfiniteListView.dart';
import 'demo41_InfiniteGridView.dart';
import 'demo42_CustomScrollViewTestRoute.dart';
import 'demo43_ScrollController.dart';
import 'demo44_ScrollController2.dart';
import 'demo45_willpopscope.dart';
import 'demo46_InheritedWidget.dart';
import 'demo47_Provider.dart';
import 'demo48_theme.dart';
import 'demo49_future_builder.dart';
import 'demo49_stream_builder.dart';
import 'demo4_statemanager.dart';
import 'demo50_dialog.dart';
import 'demo51.dart';
import 'demo52_gesture.dart';
import 'demo53.dart';
import 'demo54.dart';
import 'demo55_MyNotification.dart';
import 'demo55_Notification.dart';
import 'demo56_GradientButton.dart';
import 'demo56_TurnBox.dart';
import 'demo5_statemanager2.dart';
import 'demo60_io_file.dart';
import 'demo61_camera.dart';
import 'demo61_webview.dart';
import 'demo62_toast.dart';
import 'demo63_getui.dart';
import 'demo6_statemanager3.dart';
import 'demo7_statemanager4.dart';
import 'demo8_text.dart';
import 'demo9_buttons.dart';

// class MyDemoIndexApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Startup Name Generator',
//       theme: new ThemeData(
//         primaryColor: Colors.white,
//       ),
//       // home: new RandomWords(),
//       // home:
//       // home: (),
//       // home: (),
//       // home: GetStateWidget(),
//       home: ButtonPage(),
//     );
//   }
// }

class MyDemoButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: new Text('MyDemoIndexApp-buttonPage'),
        ),
        body: Center(
          child: Container(
              child: ListView(
            children: <Widget>[
              FlatButton(
                  child: Text('StatelessWidget'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, Echo(text: 'hahahaha'))),
              FlatButton(
                  child: Text('StatelessWidget context'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ContextRoute())),
              FlatButton(
                  child: Text('StatefullWidget state声明周期'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, CounterWidget())),
              FlatButton(
                  child: Text('子树中获取state对象'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, GetStateWidget())),
              FlatButton(
                  child: Text('1.Widget管理自身状态'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, TapboxA())),
              FlatButton(
                  child: Text('2.Widget管理子Widget的状态'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ParentWidget())),
              FlatButton(
                  child: Text('3.混合状态管理'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ParentWidgetC())),
              FlatButton(
                  child: Text('4.全局状态管理'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ParentWidgetD())),
              FlatButton(
                  child: Text('文本'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, TextWidget())),
              FlatButton(
                  child: Text('按钮组'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ButtonWidget())),
              FlatButton(
                  child: Text('icon组'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, IconWidget())),
              FlatButton(
                  child: Text('icon组2'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ImageAndIconRoute())),
              FlatButton(
                  child: Text('icon组3 矢量图'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, IconFontWidget())),
              FlatButton(
                  child: Text('单选开关和复选框'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, SwitchAndCheckBoxTestRoute())),
              FlatButton(
                  child: Text('输入框及表单'), // 只看了demo开头
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, TextFieldFormTestRoute())),
              FlatButton(
                  child: Text('ProgressIndicatorTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ProgressIndicatorTestRoute())),
              FlatButton(
                  child: Text('ProgressIndicatorTestRoute进度色动画'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ProgressRoute())),
              FlatButton(
                  child: Text('ColumnRowWidget'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ColumnRowWidget())),
              FlatButton(
                  child: Text('FlexWidget'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, FlexWidget())),
              FlatButton(
                  child: Text('WrapWidget'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, WrapWidget())),
              FlatButton(
                  child: Text('TestFlowDelegate'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, FlowWidget())),
              FlatButton(
                  child: Text('StackWidget'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, StackWidget())),
              FlatButton(
                  child: Text('Stack2Widget'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, Stack2Widget())),
              FlatButton(
                  child: Text('对齐与相对定位（Align）'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, AlignWidget())),
              FlatButton(
                  child: Text('PaddingTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, PaddingTestRoute())),
              FlatButton(
                  child: Text('ScaffoldRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ScaffoldRoute())),
              FlatButton(
                  child: Text('InfiniteListView'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, InfiniteListView())),
              FlatButton(
                  child: Text('InfiniteGridView'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, InfiniteGridView())),
              FlatButton(
                  child: Text('CustomScrollViewTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, CustomScrollViewTestRoute())),
              FlatButton(
                  child: Text('ScrollControllerTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ScrollControllerTestRoute())),
              FlatButton(
                  child: Text('ScrollNotificationTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ScrollNotificationTestRoute())),
              FlatButton(
                  child: Text('WillPopScopeTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, WillPopScopeTestRoute())),
              FlatButton(
                  child: Text('InheritedWidgetTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, InheritedWidgetTestRoute())),
              FlatButton(
                  child: Text('ProviderRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ProviderRoute())),
              FlatButton(
                  child: Text('ThemeTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ThemeTestRoute())),
              FlatButton(
                  child: Text('FutureTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, FutureTestRoute())),
              FlatButton(
                  child: Text('StreamTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, StreamTestRoute())),
              FlatButton(
                  child: Text('DialogTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, DialogTestRoute())),
              FlatButton(
                  child: Text('原始指针事件处理: ListenerTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ListenerTestRoute())),
              FlatButton(
                  child: Text('手势识别: GestureDetectorTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, GestureDetectorTestRoute())),
              FlatButton(
                  child: Text('手势识别: GestureRecognizer'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, GestureRecognizerTestRoute())),
              FlatButton(
                  child: Text('NotificationListenerTestRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, NotificationListenerTestRoute())),
              FlatButton(
                  child: Text('MyNotificationRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, MyNotificationRoute())),
              FlatButton(
                  child: Text('自定义组件 组合现有组件 GradientButtonRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, GradientButtonRoute())),
              FlatButton(
                  child: Text('自定义组件 组合现有组件 TurnBoxRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, TurnBoxRoute())),
              FlatButton(
                  child: Text('文件io'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, FileOperationRoute())),
              FlatButton(
                  child: Text('CameraExampleHome'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, CameraExampleHome())),
              FlatButton(
                  child: Text('PlatformViewRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, PlatformViewRoute())),
              FlatButton(
                  child: Text('NewsWidget'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, NewsWidget())),
              FlatButton(
                  child: Text('ToastRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, ToastRoute())),
              FlatButton(
                  child: Text('GetuiRoute'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, GetuiRoute())),
              FlatButton(
                  child: Text('文件io'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, FileOperationRoute())),
              FlatButton(
                  child: Text('文件io'),
                  onPressed: () => NavigatorUtils.cupertinoPushRootNavigator(
                      context, FileOperationRoute())),
            ],
          )),
        ));
  }
}
