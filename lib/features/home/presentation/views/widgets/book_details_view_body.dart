import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_action.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:book_store/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomBookDetailsAppBar(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.438,
                  child: const CustomBookImageItem(),
                ),
                const SizedBox(height: 44),
                Text(
                  'Subtle Art Of Not Giving A Fuck',
                  textAlign: TextAlign.center,
                  style: TextStyleManager.bold24.copyWith(
                    fontFamily: kGTSectraFine,
                  ),
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
                const BookRating(),
                const SizedBox(height: 46),
                const BookAction(),
                const SizedBox(height: 50),
                Spacer(flex: 1,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also check out',
                    style: TextStyleManager.regular14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SimilarBooksListView(),
                const SizedBox(height: 40),
                Spacer(flex: 16,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
