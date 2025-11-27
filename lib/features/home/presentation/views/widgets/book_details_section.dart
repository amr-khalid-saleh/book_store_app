import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_action.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.438,
          child: const CustomBookImageItem(),
        ),
        const SizedBox(height: 44),
        Text(
          'Subtle Art Of Not Giving A Fuck',
          textAlign: TextAlign.center,
          style: TextStyleManager.bold24.copyWith(fontFamily: kGTSectraFine),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Mark Manson',
            style: TextStyleManager.semiBold18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const BookRating(rating: 4.7, count: 354),
        const SizedBox(height: 38),
        const BookAction(),
      ],
    );
  }
}
