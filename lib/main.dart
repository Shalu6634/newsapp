import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/screens/view/DetailScreen.dart';
import 'package:newsapp/screens/view/Home_page.dart';
import 'package:newsapp/screens/view/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/home',
          page: () => Homepage(),
        ),
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
        )

      ],
    );
  }
}
