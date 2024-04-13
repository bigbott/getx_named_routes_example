import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_named_routes_example/routes.dart';
import 'package:getx_named_routes_example/view/widgets/navigation_history.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});
  @override
  Widget build(BuildContext context) {
   for (var page in  Get.keys.keys){
     print(page);
   }
    return Scaffold(
        appBar: AppBar(
        title: const Text("ThirdScreen"),
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
                child: const Text("Get.toNamed(Routes.FORTH_SCREEN);"),
                onPressed: () {
                  Get.toNamed(Routes.FORTH_SCREEN);
                }),
                ElevatedButton(
                child: const Text("Get.offAndToNamed(Routes.FORTH_SCREEN);"),
                onPressed: () {
                  Get.offAndToNamed(Routes.FORTH_SCREEN);
                }),
                
          ],
        ),
      ),
    );
  }
}
