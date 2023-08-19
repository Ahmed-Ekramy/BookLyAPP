import 'package:flutter/material.dart';
import '../widgets/home_view_body.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeViewBody());
  }
}
