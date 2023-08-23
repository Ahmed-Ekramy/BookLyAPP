import 'package:equatable/equatable.dart';

class HomeEntity extends Equatable
{
  final String image;
  final String authorName;
  final String title;
  final num rating;
  final num price;
  final int count;

  const HomeEntity(this.image, this.authorName, this.title, this.rating, this.price,
      this.count);

  @override
  // TODO: implement props
  List<Object?> get props =>[image,authorName,title, rating, price,count];
}