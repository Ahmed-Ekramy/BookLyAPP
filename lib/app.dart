
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routes/routes.dart';
import 'config/theme/theme_app.dart';

class BookApp extends StatelessWidget {
  String route;
  BookApp(this.route, {super.key}); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) => MaterialApp(
        darkTheme: MyThemeData.darkTheme,
        themeMode:ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        initialRoute:route,
        onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),

      ),
    );
  }
}
