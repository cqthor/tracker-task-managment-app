import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tracker/screens/login_signup/sign_in.dart';
import 'package:tracker/screens/onboarding_screens/onboard_title.dart';
import 'package:tracker/screens/onboarding_screens/onboarding_screen_second.dart';
import 'package:tracker/screens/onboarding_screens/onboarding_screen_third.dart';

import '../../models/onboarding_models.dart';
import 'onboarding_screen_first.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  List<Pages> pages = [
    Pages(
      const OnboardTitle(),
      const OnboardingScreenFirst(),
    ),
    Pages(
      const OnboardTitle2(),
      const OnboardingScreenSecond(),
    ),
    Pages(
      const OnboardTitle3(),
      const OnboardingScreenThird(),
    )
  ];
  final PageController controller = PageController();
  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          controller: controller,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).viewPadding.top,
              child: Stack(
                children: [
                  Positioned(
                    child: SizedBox(
                      height: 470,
                      child: pages[index].widget,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset('assets/images/next_button.svg'),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 470, left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Task Managment",
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    color: const Color(0xff3580FF),
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: pages[index].titleWidget,
                        ),
                        const SizedBox(height: 15),
                        SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: const ExpandingDotsEffect(
                            radius: 8,
                            spacing: 7,
                            expansionFactor: 3,
                            dotHeight: 8,
                            dotWidth: 8,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignInScreen()),
                                    (Route<dynamic> route) => false);
                              },
                              child: Text(
                                "Skip",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: const Color(0xff002055)),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  if (index < 2) {
                                    controller.nextPage(
                                      duration: _kDuration,
                                      curve: _kCurve,
                                    );
                                  } else {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignInScreen()),
                                        (Route<dynamic> route) => false);
                                  }
                                },
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )),
                            const SizedBox(width: 20)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
