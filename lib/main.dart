import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    );
  }
}
