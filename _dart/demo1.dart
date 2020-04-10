// class ScreenUtil {
//   static ScreenUtil _instance;
//   static const int defaultWidth = 1080;
//   static const int defaultHeight = 1920;

//   num uiWidthPx;
//   num uiHeightPx;

//   ScreenUtil._();

//   factory ScreenUtil() {
//     return _instance;
//   }

//   static void init({num width = defaultWidth, num height = defaultHeight}) {
//     if (_instance == null) {
//       _instance = ScreenUtil._();
//       print('init $_instance');
//     }

//     _instance.uiWidthPx = width;
//     _instance.uiHeightPx = height;
//   }
// }

// class ScreenUtil2 extends ScreenUtil {
//   static ScreenUtil2 _instance;
//   static const int defaultWidth = 1080;
//   static const int defaultHeight = 1920;

//   num uiWidthPx;
//   num uiHeightPx;

//   ScreenUtil2._();

//   factory ScreenUtil2() {
//     return _instance;
//   }

//   static void init({num width = defaultWidth, num height = defaultHeight}) {
//     if (_instance == null) {
//       _instance = new ScreenUtil2._();
//       print('ScreenUtil2 init $_instance');
//     }

//     _instance.uiWidthPx = width;
//     _instance.uiHeightPx = height;
//   }
// }

// class B implements A {
//   @override
//   void doSomething() => print('Do something already..');
// }

// abstract class A {
//   void doSomething() => print('Do something..');
//   A._();
//   // factory A() => new B();
//   factory A() => B();
//   A.protected();
// }

// class C extends A {
//   C() : super.protected();
// }

// main(List<String> args) {
//   ScreenUtil.init(width: 100, height: 100);
//   print(ScreenUtil());
//   print(ScreenUtil().uiHeightPx);

//   ScreenUtil2.init(width: 1001, height: 1001);
//   print(ScreenUtil2());
//   print(ScreenUtil2().uiHeightPx);
// }
