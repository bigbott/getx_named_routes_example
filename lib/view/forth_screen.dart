import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_named_routes_example/routes.dart';
import 'package:getx_named_routes_example/view/widgets/navigation_history.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ForthScreen"),
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
            ElevatedButton(
              child: const Text("Get.toNamed(Routes.SECOND_SCREEN);"),
              onPressed: () {
                Get.toNamed(Routes.SECOND_SCREEN);
              },
            ),
            ElevatedButton(
              child: const Text("Get.toNamed(Routes.THIRD_SCREEN);"),
              onPressed: () {
                Get.toNamed(Routes.THIRD_SCREEN);
              },
            ),
            ElevatedButton(
                child: const Text("Get.offAllNamed(Routes.FIRST_SCREEN);"),
                onPressed: () {
                  Get.offAllNamed(Routes.FIRST_SCREEN);
                }),
            ElevatedButton(
                child: const Text(
                    "Get.until((route) => Get.routing.current == Routes.SECOND_SCREEN);"),
                onPressed: () {
                  Get.until(
                      (route) => Get.routing.current == Routes.SECOND_SCREEN);
                }),
            ElevatedButton(
                child: const Text(" Get.close(2);"),
                onPressed: () {
                  Get.close(2);
                }),
           
          ],
        ),
      ),
    );
  }
}
