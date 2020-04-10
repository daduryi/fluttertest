import 'package:rxdart/rxdart.dart';

void function1() {
  // List array = [1, 2, 3, 4, 5, 6, 7];
  // Observable.fromIterable(array).map<String>((data) {
  //   return (data + 1).toString();
  // }).doOnListen(() {
  //   print("被监听");
  // }).listen((data) {
  //   print(data);
  // });
}

class Observable {}

void function2() {
  var subject1 = new PublishSubject<int>();
  subject1.add(2);
  subject1.add(1); //数据放在监听之前，不会发出数据
  subject1.stream.listen((data) {
    print("listen1 " + data.toString());
  });
  subject1.stream.listen((data) {
    print("listen2 " + data.toString());
  });
  //输出结果:
}

void function21() {
  var subject1 = new PublishSubject<int>();
  subject1.stream.listen((data) {
    print("listen1 " + data.toString());
  });
  subject1.add(1); //数据放在监听之前，不会发出数据
  subject1.stream.listen((data) {
    print("listen2 " + data.toString());
  });
  subject1.add(2);
  //输出结果:1,2,2
}

void function3() {
  BehaviorSubject behaviorSubject = new BehaviorSubject();
  behaviorSubject.add(1);

  behaviorSubject.stream.listen((data) {
    print("listen1  " + data.toString());
  });
  behaviorSubject.add(2);

  behaviorSubject.stream.listen((data) {
    print("listen2  " + data.toString());
  }); //输出: listen1 1,listen1 2,listen2 2
}

void function31() {
  BehaviorSubject behaviorSubject = new BehaviorSubject();
  behaviorSubject.add(1);

  behaviorSubject.stream.listen((data) {
    print("listen1  " + data.toString());
  });
  // behaviorSubject.add(2);

  behaviorSubject.stream.listen((data) {
    print("listen2  " + data.toString());
  }); //输出  listen1  1, listen2 1

  // behaviorSubject.add(2);
}

main(List<String> args) {
  function31();
}
