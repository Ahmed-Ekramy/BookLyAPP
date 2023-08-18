
import 'package:flutter/material.dart';

import '../../core/utils/componants.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';

class Routes{
  static const String splashScreen="/";

}
class AppRoutes{
  static Route onGenerate(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context)=>const SplashScreen() );

      default:
        return MaterialPageRoute(builder: (context)=> unDefineRoute());
    }

  }

}