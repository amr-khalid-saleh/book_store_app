import 'package:book_store/core/widgets/custom_circular_indicator.dart';
import 'package:book_store/core/widgets/custom_error_widget.dart';
import 'package:book_store/features/home/presentation/view_models/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState >(
      builder: (context, state) {
        if(state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.138,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: CustomBookImageItem(book: state.books[index],),
                );
              },
            ),
          );
        }else if(state is SimilarBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
