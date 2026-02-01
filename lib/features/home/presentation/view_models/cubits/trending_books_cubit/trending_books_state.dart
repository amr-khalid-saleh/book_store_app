part of 'trending_books_cubit.dart';

abstract class TrendingBooksState {
  const TrendingBooksState();
}

class TrendingBooksInitial extends TrendingBooksState {}

class TrendingBooksLoading extends TrendingBooksState {}

class TrendingBooksFailure extends TrendingBooksState {
  final String errMessage;

  const TrendingBooksFailure(this.errMessage);
}

class TrendingBooksSuccess extends TrendingBooksState {
  final List<BookEntity> books;

  const TrendingBooksSuccess(this.books);
}
