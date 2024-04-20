import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_named_routes_example/routes.dart';
import 'package:getx_named_routes_example/view/widgets/navigation_history.dart';

class GrandChildScreen extends StatelessWidget {
  const GrandChildScreen({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        title: const Text("GrandChildScreen"),
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
                 
           
                
          ],
        ),
      ),
    );
  }
}
