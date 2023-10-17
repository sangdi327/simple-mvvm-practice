import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_mvvm_pattern_practice/viewmodel/view_model_provier.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NumberProvier>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mvvm with provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, value, child) => Text(
                Provider.of<NumberProvier>(context).count.toString(),
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
                    controller.increaseProvider();
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.decreaseProvider();
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
