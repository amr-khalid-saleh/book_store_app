import 'package:book_store/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchTrendingBooks();

  List<BookEntity> fetchGeneralBooks();

  List<BookEntity> fetchSimilarBooks({required String category});
}

class HomeLocalDataSourceimpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchTrendingBooks() {
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchGeneralBooks() {
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchSimilarBooks({required String category}) {
    throw UnimplementedError();
  }
}
