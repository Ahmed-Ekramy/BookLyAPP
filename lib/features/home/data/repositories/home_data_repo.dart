import 'package:book/core/error/failures.dart';
import 'package:book/features/home/data/data_sources/home_local_dto.dart';
import 'package:book/features/home/data/data_sources/home_remote_dto.dart';
import 'package:book/features/home/domain/entities/book_entity.dart';
import 'package:book/features/home/domain/repositories/home_domain_repo.dart';
import 'package:dartz/dartz.dart';

class HomeDataRepo extends HomeDomainRepo{
  final HomeRDto homeRDto;
  final HomeLDto homeLDto;

  HomeDataRepo({required this.homeRDto,required this.homeLDto});

  @override
  Future<Either<Failures, List<BookEntity>>> fetchFeatureBooks() async{
    try{
      var bookList = homeLDto.fetchFeatureBooks();
      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      var books = await homeRDto.fetchFeatureBooks();
      return right(books);
    }catch(e){
      return left(Failures());
    }
  }

  @override
  Future<Either<Failures, List<BookEntity>>> fetchNewestBooks()async {
    try{
      var bookList = homeLDto.fetchNewestBooks();
      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      var books = await homeRDto.fetchNewestBooks();
      return right(books);
    }catch(e){
      return left(Failures());
    }
  }

}