import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
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
