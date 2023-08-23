
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/home_entity.dart';
abstract class HomeDomainRepo{
  Future<Either<Failures,List<HomeEntity>>>fetchFeatureBooks();
  Future<Either<Failures,List<HomeEntity>>>fetchNewestBooks();

}