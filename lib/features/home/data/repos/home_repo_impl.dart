import 'package:book_store/core/error/failure.dart';
import 'package:book_store/core/utils/api_services.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});

  @override
  Future<Either<Failure, List<BookModel>>> fetchTrendingBooks() async {
    try {
      List<dynamic> books = await apiServices.get(
        url:
            'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest&q=subject:general',
      );
      List<BookModel> booksList = books
          .map((e) => BookModel.fromJson(e))
          .toList();
      return Right(booksList);
    } catch (e) {
      if (e is ServerFailure) {
        return Left(e);
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      List<dynamic> books = await apiServices.get(
        url:
            'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:general',
      );
      List<BookModel> booksList = books
          .map((e) => BookModel.fromJson(e))
          .toList();
      return Right(booksList);
    } catch (e) {
      if (e is ServerFailure) {
        return Left(e);
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
