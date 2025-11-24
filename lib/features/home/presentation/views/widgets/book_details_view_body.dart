import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_action.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: const CustomBookImageItem(),
            ),
            const SizedBox(height: 42),
            Text(
              'Subtle Art Of Not Giving A Fuck',
              style: TextStyleManager.semiBold30.copyWith(
                fontFamily: kGTSectraFine,
              ),
            ),
            const SizedBox(height: 6),
            Opacity(
              opacity: 0.7,
              child: Text(
                'Subtle Art Of Not Giving A Fuck',
                style: TextStyleManager.semiBold18.copyWith(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const BookRating(),
            const SizedBox(height: 36),
            BookAction(),
          ],
        ),
      ),
    );
  }
}

