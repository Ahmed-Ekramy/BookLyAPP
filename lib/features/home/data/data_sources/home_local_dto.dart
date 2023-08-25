import 'package:book/core/utils/constant.dart';
import 'package:book/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/adapters.dart';
import '../models/BookModel.dart';

abstract class HomeLDto {
 List <BookEntity> fetchFeatureBooks();
 List <BookEntity> fetchNewestBooks();
}
class HomeLocalDto  implements HomeLDto{
  @override
  List <BookEntity> fetchFeatureBooks() {
var box=Hive.box<BookEntity>(Constants.featuredBox);
return box.values.toList();
  }

  @override
  List <BookEntity> fetchNewestBooks() {
    var box=Hive.box<BookEntity>(Constants.newestBox);
    return box.values.toList();
  }

}