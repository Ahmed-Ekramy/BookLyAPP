import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/home_entity.dart';
import '../repositories/home_domain_repo.dart';

class FetchFeatureBooksUseCase{
  final HomeDomainRepo homeDomainRepo;

  FetchFeatureBooksUseCase(this.homeDomainRepo);
  Future<Either<Failures,List<HomeEntity>>>call(){
    return homeDomainRepo.fetchFeatureBooks();
}
}