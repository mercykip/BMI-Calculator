import 'package:bmi_calculator/application/theme/coloars.dart';
import 'package:bmi_calculator/presentation/router/router_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          textTheme: TextTheme(bodyText2: TextStyle(color: white))),
      // home: Dashboard(),
      onGenerateRoute: RouterNavigator.generateRoute,
    );
  }
}
