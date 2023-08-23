import 'package:flutter/cupertino.dart';
import '../../../../core/utils/app_images.dart';

class CustomBookImages extends StatelessWidget {
  const CustomBookImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5/4,
      child: Container(
        decoration:  const BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill
                ,image: AssetImage(AppImages.testImage))
        ),
      ),
    );
  }
}