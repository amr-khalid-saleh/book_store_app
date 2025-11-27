import 'package:book_store/core/widgets/custom_circular_indicator.dart';
import 'package:book_store/core/widgets/custom_error_widget.dart';
import 'package:book_store/features/home/presentation/view_models/cubits/trending_books_cubit/trending_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingBookListView extends StatelessWidget {
  const TrendingBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingBooksCubit, TrendingBooksState>(
      builder: (context, state) {
        if (state is TrendingBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookImageItem(book: state.books[index]),
                );
              },
            ),
          );
        } else if (state is TrendingBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
