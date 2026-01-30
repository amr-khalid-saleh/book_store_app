import 'package:book_store/core/constants/constants.dart';
import 'package:book_store/core/utils/api_services.dart';
import 'package:book_store/core/utils/functions/save_books_data.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchGeneralBooks();

  Future<List<BookEntity>> fetchTrendingBooks();

  Future<List<BookEntity>> fetchSimilarBooks({required String category});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices _apiServices;

  HomeRemoteDataSourceImpl(this._apiServices);

  @override
  Future<List<BookEntity>> fetchGeneralBooks() async {
    var data = await _apiServices.get(
      endPoint: 'volumes?filter=free-ebooks&orderBy=newest&q=general',
    );
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books: books, boxName: kGeneralBooks);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchTrendingBooks() async {
    var data = await _apiServices.get(
      endPoint: 'volumes?filter=free-ebooks&orderBy=newest&q=trending',
    );
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books: books, boxName: kTrendingBooks);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchSimilarBooks({required String category}) async {
    var data = await _apiServices.get(
      endPoint: 'volumes?filter=free-ebooks&orderBy=newest&q=$category',
    );
    List<BookEntity> books = getBooksList(data);

    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    if (data['items'] != null) {
      for (var bookMap in data['items']) {
        books.add(BookModel.fromJson(bookMap));
      }
    }
    return books;
  }
}
