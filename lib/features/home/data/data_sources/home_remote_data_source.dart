import 'package:book_store/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchTrendingBooks();

  Future<List<BookEntity>> fetchGeneralBooks();

  Future<List<BookEntity>> fetchSimilarBooks({required String category});
}
