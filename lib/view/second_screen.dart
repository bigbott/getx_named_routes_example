import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_named_routes_example/routes.dart';
import 'package:getx_named_routes_example/view/widgets/navigation_history.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const NavigationHistory(),
            ElevatedButton(
                child: const Text("Get.back()"),
                onPressed: () {
                  Get.back();
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: const Text("Get.toNamed() with parameter"),
                    onPressed: () {
                      Get.toNamed(Routes.SECOND_SCREEN,
                          parameters: {'id': '${Random().nextInt(30)}'},
                          preventDuplicates: false);
                    }),
                const SizedBox(
                  width: 10,
                ),
                Text(Get.parameters['id'] ?? ''),
              ],
            ),
            ElevatedButton(
              child: const Text("Get.toNamed(Routes.THIRD_SCREEN);"),
              onPressed: () {
                Get.toNamed(Routes.THIRD_SCREEN);
              },
            ),
            ElevatedButton(
              child: const Text("Get.offNamed(Routes.THIRD_SCREEN);"),
              onPressed: () {
                Get.offNamed(Routes.THIRD_SCREEN);
              },
            ),
          ],
        ),
      ),
    );
  }
}
