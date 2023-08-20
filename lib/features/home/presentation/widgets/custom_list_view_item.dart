import 'package:flutter/cupertino.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/utils/app_images.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration:  const BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill
                ,image: AssetImage(AppImages.testImage))
        ),
      ),
    );
  }
}