import 'package:book_store/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

//generic data type : {UseCase<DataType, ParamType> ,, List<T> ,, Future<E>}
abstract class UseCase<T> {
  Future<Either<Failure, T>> execute();
}
