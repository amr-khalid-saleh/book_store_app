import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/image_manager.dart';
import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 124,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4, //width/height
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(ImageManager.subtleArtOfNotGivingAFuck),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Subtle Art Of Not Giving A Fuck',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleManager.regular20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text('Mark Manson', style: TextStyleManager.regular14),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '119 \$',
                        style: TextStyleManager.regular20.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
