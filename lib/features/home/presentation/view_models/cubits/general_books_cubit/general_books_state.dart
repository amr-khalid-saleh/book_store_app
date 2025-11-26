part of 'general_books_cubit.dart';

abstract class GeneralBooksState {
  const GeneralBooksState();
}

final class GeneralBooksInitial extends GeneralBooksState {}

final class GeneralBooksLoading extends GeneralBooksState {}

final class GeneralBooksFailure extends GeneralBooksState {
  final String errMessage;

  const GeneralBooksFailure(this.errMessage);
}

final class GeneralBooksSuccess extends GeneralBooksState {
  final List<BookModel> books;

  const GeneralBooksSuccess(this.books);
}
