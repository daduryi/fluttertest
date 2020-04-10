import 'package:camera/camera.dart';

class MyCamera {

  var _cameras;

  init() async {
    _cameras = await availableCameras();
  }

  get cameras {
    return _cameras;
  }

}

// final myCamera = new MyCamera();
