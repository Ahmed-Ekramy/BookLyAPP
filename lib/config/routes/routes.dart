
import 'package:flutter/material.dart';
import '../../core/utils/components.dart';
import '../../features/home/presentation/pages/home_layout.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';

class Routes{
  static const String splashScreen="/";
  static const String home="/";

}
class AppRoutes{
  static Route onGenerate(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context)=>const SplashScreen() );
        case Routes.home:
        return MaterialPageRoute(builder: (context)=>const HomeLayout() );

      default:
        return MaterialPageRoute(builder: (context)=> unDefineRoute());
    }

  }

}