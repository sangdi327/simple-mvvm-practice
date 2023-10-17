import 'package:flutter/material.dart';
import 'package:simple_mvvm_pattern_practice/viewmodel/view_model_with_stf_widget.dart';

class WithStlWidget extends StatelessWidget {
  WithStlWidget({super.key});

  final viewModelWithStlWidget = ViewModelWithStlWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mvvm with the stl widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
                stream: viewModelWithStlWidget.numberStream,
                builder: (context, snapshot) {
                  return Text(
                    viewModelWithStlWidget.countStl.toString(),
                    style: const TextStyle(fontSize: 50),
                  );
                }),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    viewModelWithStlWidget.increaseStl();
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModelWithStlWidget.decreaseStl();
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
