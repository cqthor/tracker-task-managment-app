import 'package:flutter/material.dart';
import 'package:tracker/widgets/custom_button.dart';
import 'package:tracker/widgets/profile_task_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 36,
                ),
              ),
              Text("Profile", style: Theme.of(context).textTheme.headline3!),
              const SizedBox(width: 36),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage("https://reqres.in/img/faces/8-image.jpg"),
                ),
                const SizedBox(height: 14),
                Text(
                  "Alvart Ainstain",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 22),
                ),
                const SizedBox(height: 5),
                Text(
                  "@albart.ainstain",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: const Color(0xff848A94),
                      ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 28,
                  width: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xff3580FF),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Edit",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ProfileTaskCard(finished: false, task: 5),
                      VerticalDivider(
                        width: 80,
                        thickness: 1,
                        endIndent: 0,
                        color: Color(0xffE9F1FF),
                      ),
                      ProfileTaskCard(finished: true, task: 25)
                    ],
                  ),
                ),
                const SizedBox(height: 37),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: const [
                      CustomButton(title: "My Projects"),
                      CustomButton(title: "Join a Team"),
                      CustomButton(title: "Settings"),
                      CustomButton(title: "My Tasks"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
