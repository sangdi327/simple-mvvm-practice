import 'package:get/get.dart';
import 'package:simple_mvvm_pattern_practice/model/number_model.dart';

class NumberController extends GetxController {
  late NumberModel numberModel;
  Rx<int> count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    numberModel = NumberModel();
  }

  void increaseGetx() {
    numberModel.increase();
    count(numberModel.counter);
  }

  void decreaseGetx() {
    numberModel.decrease();
    count(numberModel.counter);
  }
}
