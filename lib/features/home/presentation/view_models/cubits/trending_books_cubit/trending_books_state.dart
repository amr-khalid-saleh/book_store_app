part of 'trending_books_cubit.dart';

abstract class TrendingBooksState {
  const TrendingBooksState();
}

class TrendingBooksInitial extends TrendingBooksState {}

class TrendingBooksLoading extends TrendingBooksState {}

class TrendingBooksFailure extends TrendingBooksState {
  final String errMessage;

  TrendingBooksFailure(this.errMessage);
}

class TrendingBooksSuccess extends TrendingBooksState {
  final List<BookModel> books;

  TrendingBooksSuccess(this.books);
}
