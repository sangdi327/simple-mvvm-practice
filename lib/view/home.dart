import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:simple_mvvm_pattern_practice/view/mvvm_getx/with_getx.dart';
import 'package:simple_mvvm_pattern_practice/view/mvvm_provider/with_provider.dart';
import 'package:simple_mvvm_pattern_practice/view/mvvm_stl_widget/with_stl_widget.dart';
import 'package:simple_mvvm_pattern_practice/viewmodel/view_model_getx.dart';
import 'package:simple_mvvm_pattern_practice/viewmodel/view_model_provier.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mvvm pattern with several state managements'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WithStlWidget(),
                  ),
                );
              },
              child: const Text('with the stl widget'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const WithGetx(), binding: BindingsBuilder(() {
                  Get.put(NumberController());
                }));
              },
              child: const Text('with getx'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChangeNotifierProvider(
                      create: (context) => NumberProvier(),
                      child: const WithProvider(),
                    ),
                  ),
                );
              },
              child: const Text('with provider'),
            ),
          ],
        ),
      ),
    );
  }
}
