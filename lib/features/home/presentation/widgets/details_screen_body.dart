import 'package:flutter/cupertino.dart';

import 'app_bar_details.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          AppBarrDetails()
        ],
      ),
    );
  }
}
