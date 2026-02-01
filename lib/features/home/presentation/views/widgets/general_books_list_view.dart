import 'package:book_store/core/widgets/custom_circular_indicator.dart';
import 'package:book_store/core/widgets/custom_error_widget.dart';
import 'package:book_store/features/home/presentation/view_models/cubits/general_books_cubit/general_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneralBooksListView extends StatelessWidget {
  const GeneralBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralBooksCubit, GeneralBooksState>(
      builder: (context, state) {
        if (state is GeneralBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: BookItem(book: state.books[index]),
              );
            },
          );
        } else if (state is GeneralBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomCircularIndicator();
        }
      },
    );
  }
}
