import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBook();
}
