import 'package:flutter/material.dart';

import '../widgets/details_screen_body.dart';

class DetailsScreenView extends StatelessWidget {
  const DetailsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(child: DetailsScreenBody()) ,
    );
  }
}
