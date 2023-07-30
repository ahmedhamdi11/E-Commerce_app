import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/data/data_source/static/static_data.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onBoardingData.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),

            // onboarding title
            Text(
              onBoardingData[index].title,
              style: Styles.title18,
            ),

            const SizedBox(
              height: 80,
            ),

            // onboarding image
            Lottie.asset(
              onBoardingData[index].image,
              height: 250,
            ),

            const SizedBox(
              height: 80,
            ),

            // onboarding body
            Text(
              onBoardingData[index].body,
              textAlign: TextAlign.center,
              style: Styles.bodyGrey14,
            ),
          ],
        );
      },
    );
  }
}
