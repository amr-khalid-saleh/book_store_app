import 'package:book_store/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                SizedBox(height: 50),
                Spacer(flex: 1),
                SimilarBooksSection(),
                SizedBox(height: 40),
                Spacer(flex: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
