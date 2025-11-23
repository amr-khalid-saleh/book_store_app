import 'package:book_store/core/utils/image_manager.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 116,
          child: AspectRatio(
            aspectRatio: 2.5 / 4, //width/height
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(ImageManager.subtleArtOfNotGivingAFuck),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        Column(),
      ],
    );
  }
}
