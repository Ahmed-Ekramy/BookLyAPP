
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/components.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomAppBarr(),
        FeaturedListView(),
      ],
    );
  }
}




