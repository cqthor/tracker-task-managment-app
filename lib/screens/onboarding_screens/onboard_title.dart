import 'package:flutter/material.dart';

class OnboardTitle extends StatelessWidget {
  const OnboardTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "Let's create a",
          style: Theme.of(context).textTheme.headline1,
          children: [
            TextSpan(
              text: "\nspace ",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: const Color(0xff3580FF),
                  ),
            ),
            TextSpan(
              text: "for your workflows",
              style: Theme.of(context).textTheme.headline1,
            ),
          ]),
    );
  }
}

class OnboardTitle2 extends StatelessWidget {
  const OnboardTitle2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "Work more",
          style: Theme.of(context).textTheme.headline1,
          children: [
            TextSpan(
              text: "\nStructured ",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: const Color(0xff3580FF),
                  ),
            ),
            TextSpan(
              text: "and Organized 👌",
              style: Theme.of(context).textTheme.headline1,
            ),
          ]),
    );
  }
}

class OnboardTitle3 extends StatelessWidget {
  const OnboardTitle3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Manage your",
            style: Theme.of(context).textTheme.headline1,
            children: [
          TextSpan(
            text: "\nTasks ",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: const Color(0xff3580FF),
                ),
          ),
          TextSpan(
            text: "quickly for \nResults✌",
            style: Theme.of(context).textTheme.headline1,
          ),
        ]));
  }
}
