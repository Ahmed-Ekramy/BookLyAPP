import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/utils/app_images.dart';

class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 10),
      child: Row(
        children: [
          Image.asset(
            AppImages.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.searchScreen);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
