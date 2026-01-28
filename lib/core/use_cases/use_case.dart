import 'package:book_store/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

//generic data type : {UseCase<DataType, ParamType> ,, List<T> ,, Future<E>}
abstract class UseCase<T, Param> {
  Future<Either<Failure, T>> execute(Param param);
}

//one use case for to cases with param and without param
/*
abstract class UseCase<T, Param> {
  Future<Either<Failure, T>> execute([Param param]);
}

class FetchTrendingBooksUseCase extends UseCase<List<BookEntity>,void> {
  final HomeRepo homeRepo;

  FetchTrendingBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> execute([void param]) async{
    //check permission for user
    return await homeRepo.fetchTrendingBooks();
  }
}
*/
