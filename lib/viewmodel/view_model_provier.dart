import 'package:flutter/material.dart';
import 'package:simple_mvvm_pattern_practice/model/number_model.dart';

class NumberProvier extends ChangeNotifier {
  late NumberModel numberModel;

  NumberProvier() {
    numberModel = NumberModel();
  }

  int get count => numberModel.counter;

  void increaseProvider() {
    numberModel.increase();
    notifyListeners();
  }

  void decreaseProvider() {
    numberModel.decrease();
    notifyListeners();
  }
}
