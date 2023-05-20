import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/colors.dart';
import 'view/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        brightness: Brightness.light,
        scaffoldBackgroundColor: kWhiteColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainView(),
    );
  }
}
