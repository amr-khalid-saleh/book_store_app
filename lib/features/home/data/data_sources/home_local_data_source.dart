import 'package:book_store/core/constants/constants.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchGeneralBooks();

  List<BookEntity> fetchTrendingBooks();

  List<BookEntity> fetchSimilarBooks({required String category});
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchGeneralBooks() {
    var box = Hive.box<BookEntity>(kGeneralBooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchTrendingBooks() {
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchSimilarBooks({required String category}) {
    throw UnimplementedError();
  }
}
