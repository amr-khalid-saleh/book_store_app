import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

abstract class HomeRepo{
  Future<Either<Failure, List<BookEntity>>> fetchTrendingBooks();
  Future<Either<Failure, List<BookEntity>>> fetchGeneralBooks();
}