import 'package:book_store/core/utils/image_manager.dart';
import 'package:book_store/core/utils/text_style_manager.dart';
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
        const SizedBox(width: 30),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                'subtle art of not giving a fuck',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyleManager.regular20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
