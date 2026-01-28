import 'package:book_store/core/constants/constants.dart';
import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_action.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.438,
          child: CustomBookImageItem(book: book),
        ),
        const SizedBox(height: 44),
        Text(
          book.volumeInfo.title ?? 'Unknown title',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyleManager.bold24.copyWith(fontFamily: kGTSectraFine),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            (book.volumeInfo.authors?.isNotEmpty ?? false) ? book
                .volumeInfo.authors![0] : 'Unknown Author',
            textAlign: TextAlign.center,
            style: TextStyleManager.semiBold18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const BookRating(rating: 2.5, count: 129),
        const SizedBox(height: 38),
        BookAction(url: book.volumeInfo.previewLink??'',),
      ],
    );
  }
}
