import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_named_routes_example/routes.dart';
import 'package:getx_named_routes_example/view/widgets/navigation_history.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstScreen"),
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
              child: const Text("Get.snackbar"),
              onPressed: () {
                //Get.toNamed(Routes.THIRD_SCREEN);
                Get.snackbar("snackbar", "this is a snackbar");
              },
            ),
            ElevatedButton(
              child: const Text(" Get.defaultDialog"),
              onPressed: () {
                Get.defaultDialog(title: "this is default dialog");
              },
            ),
            ElevatedButton(
              child: const Text(" Get.bottomSheet"),
              onPressed: () {
                Get.bottomSheet(const SizedBox(
                    height: 100,
                    
                    child: Center(child: Text("This is a bottomsheet"))));
              },
            ),
          ],
        ),
      ),
    );
  }
}
