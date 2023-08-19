
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'app_images.dart';
Widget unDefineRoute()=>const Scaffold(
  body: Center(
    child: Text("unDefineRoute"),
  ),
);
class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 40),
      child: Row(
        children: [
          Image.asset(AppImages.logo,height: 18,),
          const Spacer(),
          IconButton(
              onPressed: () {},
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