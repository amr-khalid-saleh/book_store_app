import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/use_cases/use_case.dart';

class FetchSimilarBooksUseCase extends UseCase<List<BookEntity>,String> {
  final HomeRepo homeRepo;

  FetchSimilarBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> execute(String category) async{
    //check permission for user
    return await homeRepo.fetchSimilarBooks(category: category);
  }
}
