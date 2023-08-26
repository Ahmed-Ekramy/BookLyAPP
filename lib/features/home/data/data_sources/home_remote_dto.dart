import 'package:book/core/api/api_service.dart';
import 'package:book/core/api/end_points.dart';
import 'package:book/features/home/data/models/BookModel.dart';

import 'package:hive/hive.dart';

import '../../../../core/utils/constant.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRDto {
  Future<List<BookEntity>> fetchFeatureBooks();

  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDto implements HomeRDto {
  final ApiService apiService;

  HomeRemoteDto(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeatureBooks() async {
    var data = await apiService.get(endPoint: EndPoints.programming);
    List<BookEntity> books = getBookList(data);
    saveData(books,Constants.featuredBox);
    return books;
  }


  @override
  Future<List<BookEntity>> fetchNewestBooks()async {
    var data = await apiService.get(endPoint: EndPoints.programmingNewest);
    List<BookEntity> books = getBookList(data);
    saveData(books,Constants.newestBox);
    return books;
  }
}
List<BookEntity> getBookList(Map<String, dynamic> data) {
  List<BookEntity> books = [];
  for (var bookMap in data['items']) {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
void saveData(List<BookEntity> books, String boxName) {
  var box=Hive.box(boxName);
  box.addAll(books);
}
