
import 'package:flutter/material.dart';

import '../../core/utils/app_color.dart';

class MyThemeData{
  static  ThemeData darkTheme=ThemeData(
scaffoldBackgroundColor: AppColors.primaryColor,
    textTheme:  const TextTheme(bodySmall: TextStyle(color: Colors.white))
  );
}