import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () {
        Get.toNamed('/home');
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Container(
              height: 210,
              width: 210,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://cdn.dribbble.com/users/1359053/screenshots/3719173/attachments/834200/icon5_2x.png'),
                ),
              ),
            ),
            Text(
              'DAILY NEWS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
