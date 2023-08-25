import 'package:book/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../repositories/home_domain_repo.dart';

class FetchFeatureBooksUseCase {
  final HomeDomainRepo homeDomainRepo;

  FetchFeatureBooksUseCase(this.homeDomainRepo);

  Future<Either<Failures, List<BookEntity>>> call() {
    return homeDomainRepo.fetchFeatureBooks();
  }
}
