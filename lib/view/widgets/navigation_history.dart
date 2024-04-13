

import 'package:flutter/material.dart';
import 'package:getx_named_routes_example/routes.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

class NavigationHistory extends StatelessWidget {
  const NavigationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Wrap(alignment: WrapAlignment.spaceBetween, children: [
              const Text("Routes in stack: ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              for (Route page in NavigationHistoryObserver().history) 
              Text("${page.settings.name!}, ", style: 
              TextStyle(fontSize: 20, fontWeight: FontWeight.bold, 
                         color: getColor(page.settings.name!)),)
            ]);
  }
  
  Color? getColor(String s) {
    switch (s) {
      case Routes.FIRST_SCREEN:
        return const Color.fromRGBO(63, 19, 121, 1);
        case Routes.SECOND_SCREEN:
        return const Color.fromARGB(255, 11, 65, 34);
        case Routes.THIRD_SCREEN:
        return const Color.fromARGB(255, 104, 24, 13);
        case Routes.FORTH_SCREEN:
        return const Color.fromARGB(255, 91, 92, 15);
      default:
        return const Color.fromRGBO(63, 19, 121, 1);
    }
  }
   
}