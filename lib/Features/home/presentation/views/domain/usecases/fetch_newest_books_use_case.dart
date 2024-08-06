import 'package:bookly/Features/home/presentation/views/domain/repositories/home_repo.dart';
import 'package:bookly/Features/home/presentation/views/domain/entities/book_entity.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/usecases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepository homeRepository;

  FetchNewestBooksUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) async {
    return await homeRepository.fetchNewestBook();
  }
}

