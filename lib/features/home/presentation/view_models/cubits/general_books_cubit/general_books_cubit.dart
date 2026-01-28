import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'general_books_state.dart';

class GeneralBooksCubit extends Cubit<GeneralBooksState> {
  GeneralBooksCubit(this.homeRepo) : super(GeneralBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchGeneralBooks() async {
    emit(GeneralBooksLoading());
    var result = await homeRepo.fetchGeneralBooks();
    result.fold(
          (failure) => emit(GeneralBooksFailure(failure.errMessage)),
          (books) => emit(GeneralBooksSuccess(books)),
    );
  }

}
