import 'package:book_store/core/error/failure.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, BookModel>> fetchTrendingBooks();

  Future<Either<Failure, BookModel>> fetchFeaturedBooks();
}
