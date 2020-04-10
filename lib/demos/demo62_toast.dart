import 'package:flutter/material.dart';
import 'package:fluttertest/widget/toast.dart';

class ToastRoute extends StatelessWidget {
  toast() {
    return MyToast.toast('请稍后再试');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: FlatButton(
      child: Text('toast'),
      onPressed: toast,
    )));
  }
}
