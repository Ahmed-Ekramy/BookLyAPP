import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_list_view_item.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: const CustomBookImages(),
          );
        },),
    );
  }
}