import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'trending_books_state.dart';

class TrendingBooksCubit extends Cubit<TrendingBooksState> {
  TrendingBooksCubit() : super(TrendingBooksInitial());
}
