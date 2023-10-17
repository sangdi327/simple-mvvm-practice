import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_mvvm_pattern_practice/viewmodel/view_model_getx.dart';

class WithGetx extends GetView<NumberController> {
  const WithGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mvvm with getx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<NumberController>(
              builder: (_) => Text(
                controller.count.value.toString(),
                style: const TextStyle(fontSize: 50),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.increaseGetx();
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.decreaseGetx();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
