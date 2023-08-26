import 'package:flutter/material.dart';
class AppBarrDetails extends StatelessWidget {
  const AppBarrDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
           Icons.close,
              size: 18,
              color: Colors.white,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
             Icons.shopping_cart,
              size: 18,
              color: Colors.white,
            ))
      ],
    );
  }
}