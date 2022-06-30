import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tracker/widgets/custom_button.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (() => Navigator.maybePop(context)),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 24,
                    ),
                  ),
                  Text(
                    "Settings",
                    style: Theme.of(context).textTheme.headline3!,
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            const SizedBox(height: 36),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      CustomButton(
                        title: "Permissiom",
                        widget: CupertinoSwitch(
                          value: isSwitched,
                          onChanged: toggleSwitch,
                          activeColor: const Color(0xff3580FF),
                          trackColor: const Color(0xffD7D7D7),
                        ),
                      ),
                      CustomButton(
                        title: "Push Notification",
                        widget: CupertinoSwitch(
                          value: isSwitched,
                          onChanged: toggleSwitch,
                          activeColor: const Color(0xff3580FF),
                          trackColor: const Color(0xffD7D7D7),
                        ),
                      ),
                      CustomButton(
                        title: "Dark Mood",
                        widget: CupertinoSwitch(
                          value: isSwitched,
                          onChanged: toggleSwitch,
                          activeColor: const Color(0xff3580FF),
                          trackColor: const Color(0xffD7D7D7),
                        ),
                      ),
                      CustomButton(
                        title: "Security",
                        widget: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.navigate_next_outlined),
                        ),
                      ),
                      CustomButton(
                        title: "Help",
                        widget: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.navigate_next_outlined),
                        ),
                      ),
                      CustomButton(
                        title: "Language",
                        widget: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.navigate_next_outlined),
                        ),
                      ),
                      CustomButton(
                        title: "About Application",
                        widget: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.navigate_next_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
