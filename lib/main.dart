import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_named_routes_example/routes.dart';
import 'package:getx_named_routes_example/view/first_screen.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const FirstScreen(),
      initialRoute: Routes.FIRST_SCREEN,
      getPages: Routes.routes,
      navigatorObservers: [NavigationHistoryObserver()],

      debugShowCheckedModeBanner: false,
    );
  }
}
