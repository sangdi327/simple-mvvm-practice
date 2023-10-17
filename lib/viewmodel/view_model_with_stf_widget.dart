import 'dart:async';

import 'package:simple_mvvm_pattern_practice/model/number_model.dart';

class ViewModelWithStlWidget {
  late NumberModel numberModel;
  StreamController<NumberModel> streamController = StreamController();
  Stream<NumberModel> get numberStream => streamController.stream;

  ViewModelWithStlWidget() {
    numberModel = NumberModel();
  }

  int get countStl => numberModel.counter;

  void update() {
    streamController.sink.add(numberModel);
  }

  void increaseStl() {
    numberModel.increase();
    update();
  }

  void decreaseStl() {
    numberModel.decrease();
    update();
  }
}
