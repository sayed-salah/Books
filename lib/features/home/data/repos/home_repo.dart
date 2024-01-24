import 'package:books_app/core/error/failure.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewstBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
