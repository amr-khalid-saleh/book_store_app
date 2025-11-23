import 'package:book_store/core/utils/image_manager.dart';
import 'package:flutter/material.dart';

class TrendingBookItem extends StatelessWidget {
  const TrendingBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4, //width/height
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(ImageManager.splashImage),
            fit: BoxFit.fill
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
