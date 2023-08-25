import 'package:book/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'app.dart';
import 'config/routes/routes.dart';
import 'features/home/domain/entities/book_entity.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(Constants.featuredBox);
  await Hive.openBox<BookEntity>(Constants.newestBox);
  String route;
  route=Routes.splashScreen;
  runApp( BookApp(route));

}

