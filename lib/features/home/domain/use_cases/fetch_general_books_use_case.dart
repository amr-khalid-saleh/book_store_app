import 'package:book_store/core/errors/failure.dart';
import 'package:book_store/core/use_cases/no_param_use_case.dart';
import 'package:book_store/features/home/domain/entities/book_entity.dart';
import 'package:book_store/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchGeneralBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchGeneralBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> execute() async{
    //check permission for user
    return await homeRepo.fetchGeneralBooks();
  }
}
