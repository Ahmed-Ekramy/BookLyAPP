
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/text_style.dart';
import 'also_like_list_view.dart';
import 'app_bar_details.dart';
import 'best_seller_listview_item.dart';
import 'book_action.dart';
import 'custom_list_view_item.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
    SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const AppBarrDetails(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery
                      .of(context)
                      .size
                      .width * 0.2),
              child: const CustomBookImages(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Ahmed's",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle30,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "ahmed",
              style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10.h,
            ),
            const BestSellerRating(MainAxisAlignment.center),
            SizedBox(
              height: 20.h,
            ),
            const BooksAction(),
            Expanded(
              child: SizedBox(
                height: 30.h,
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "you can also like",
                  style: Styles.textStyle18.copyWith(color: Colors.white),
                )),
            SizedBox(
              height: 16.h,
            ),
            const AlsoLikeListView(),
            SizedBox(
              height: 30.h,
            ),

          ],
        ),
      ),
    )
      ],

    );
  }
}

