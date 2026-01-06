import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchTrendingBooks();

  Future<Either<Failure, List<BookEntity>>> fetchGeneralBooks();

  Future<Either<Failure, List<BookEntity>>> fetchSimilarBooks({
    required String category,
  });
}
