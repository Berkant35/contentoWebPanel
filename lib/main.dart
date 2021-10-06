import 'package:flutter/material.dart';
import 'ui/home_page.dart';
import 'utilities/init/navigation/navigation_route.dart';
import 'utilities/init/navigation/navigation_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contento",
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      home: HomePage(),
    );
  }
}

