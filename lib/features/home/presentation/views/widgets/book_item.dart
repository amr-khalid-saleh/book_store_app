import 'package:book_store/core/constants/constants.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:book_store/core/widgets/custom_cashed_network_image.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4, //width/height
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CustomCashedNetworkImage(
                  imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2,
                    child: Text(
                      book.volumeInfo.title ?? 'Unknown Title',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleManager.semiBold18.copyWith(
                        fontWeight: FontWeight.w500,
                        fontFamily: kGTSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    (book.volumeInfo.authors?.isNotEmpty ?? false) ? book
                        .volumeInfo.authors![0] : 'Unknown Author',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyleManager.regular14,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: TextStyleManager.medium16.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      BookRating(rating: 0, count: 0),
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
