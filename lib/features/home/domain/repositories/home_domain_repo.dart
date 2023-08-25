
import 'package:book/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
abstract class HomeDomainRepo{
  Future<Either<Failures,List<BookEntity>>>fetchFeatureBooks();
  Future<Either<Failures,List<BookEntity>>>fetchNewestBooks();

}