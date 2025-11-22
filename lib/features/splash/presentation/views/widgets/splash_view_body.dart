import 'package:book_store/core/utils/image_manager.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(ImageManager.logo),
        const SizedBox(height: 32),
        const Text(
          'Buy your favourite book from here.',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
