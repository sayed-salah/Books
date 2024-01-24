import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewstBooks();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
