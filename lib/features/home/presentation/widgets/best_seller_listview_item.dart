
import 'package:flutter/material.dart';
import '../../../../config/routes/routes.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/text_style.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.detailsScreen);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AppImages.testImage))),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        "Ahmednghkonhlksftnhklsfghjlksftnhlkftnhoiwrtyjwortiynortih9rw6hy",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20,
                      ),
                    ),
                    Text(
                      "ahmed",
                      style: Styles.textStyle18,
                    ),
                    Row(
                      children: [
                        Text(
                          "data",
                          style: Styles.textStyle,
                        ),
                        const Spacer(),
                         const BestSellerRating(
                           MainAxisAlignment.spaceAround
                         )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BestSellerRating extends StatelessWidget {

  const BestSellerRating(this.mainAxisAlignment, {super.key});
final  MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
         const Icon(
          Icons.star,
          color: Colors.amberAccent,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "5.5",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(012354)",
          style: Styles.textStyle18,
        ),
      ],
    );
  }

}