import 'package:flutter/material.dart';
import '../../../../core/utils/app_images.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AppImages.logo),
        ),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, child) {
            return SlideTransition(
              position: slidingAnimation,
              child: Text(
                "Read Free Books",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            );
          },
        )
      ],
    );
  }
}
