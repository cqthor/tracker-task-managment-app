import 'package:flutter/material.dart';
import 'package:tracker/widgets/in_progress_card.dart';
import 'package:tracker/widgets/task_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    size: 24,
                  )),
              Text("Friday 26", style: Theme.of(context).textTheme.headline3!),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    size: 24,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text("Let’s make\na habits together  🙌",
              style: Theme.of(context).textTheme.headline2!),
        ),
        const SizedBox(height: 30),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SizedBox(width: 24),
              TaskCard(
                finised: 80,
                all: 50,
                subtitle: "UI Design Kit",
                title: "Application Design",
                bgColor: Color(0xff3580FF),
                borderColor: Color(0xff3580FF),
                titleColor: Colors.white,
                subColor: Color(0xffC5DAFD),
                progressColor: Colors.white,
              ),
              SizedBox(width: 16),
              TaskCard(
                finised: 80,
                all: 50,
                subtitle: "UI Design Kit",
                title: "Overlay Design",
                bgColor: Color(0xffFFFFFF),
                borderColor: Color(0xffEDF4FF),
                titleColor: Color(0xff002055),
                subColor: Color(0xffA0BAC5),
                progressColor: Color(0xff3580FF),
              ),
              SizedBox(width: 16),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "In Progress",
                style: Theme.of(context).textTheme.subtitle2!,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_right_sharp,
                  color: Color(0xff3580FF),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  InProgressCard(
                    date: "2 min ago",
                    progress: 60,
                    title: "Create Detail Booking",
                    projectTitle: "Productivity Mobile App",
                  ),
                  InProgressCard(
                    date: "5 min ago",
                    progress: 70,
                    title: "Revision Home Page",
                    projectTitle: "Banking Mobile App",
                  ),
                  InProgressCard(
                    date: "7 min ago",
                    progress: 80,
                    title: "Working On Landing Page",
                    projectTitle: "Online Course",
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
