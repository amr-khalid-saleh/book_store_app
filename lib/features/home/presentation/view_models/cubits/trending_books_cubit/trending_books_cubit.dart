
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'trending_books_state.dart';

class TrendingBooksCubit extends Cubit<TrendingBooksState> {
  TrendingBooksCubit(this.homeRepo) : super(TrendingBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchTrendingBooks() async {
    emit(TrendingBooksLoading());
    var result = await homeRepo.fetchTrendingBooks();
    result.fold(
      (failure) => emit(TrendingBooksFailure(failure.errMessage)),
      (books) => emit(TrendingBooksSuccess(books)),
    );
  }
}
