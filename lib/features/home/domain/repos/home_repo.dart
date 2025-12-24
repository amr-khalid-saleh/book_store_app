import 'package:book_store/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo{
  Future<List<BookEntity>> fetchTrendingBooks();
  Future<List<BookEntity>> fetchGeneralBooks();
}