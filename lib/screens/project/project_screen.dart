// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tracker/widgets/search.dart';
import 'package:tracker/widgets/task_card_2.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  String query = '';
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
                  size: 36,
                ),
              ),
              Text("Projects", style: Theme.of(context).textTheme.headline3!),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_outline,
                  size: 36,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 35),
        SearchWidget(text: query, onChanged: search, hintText: "Search"),
        const SizedBox(height: 30),
        Expanded(
          child: DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TabBar(
                          // labelStyle: Theme.of(context).textTheme.headline5!,
                          labelColor: Color(0xff002055),
                          unselectedLabelColor: Color(0xff848A94),
                          indicator: BoxDecoration(
                              border: Border.all(
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(16)),
                          indicatorColor: Color(0xff3580FF),
                          padding: EdgeInsets.all(0),
                          isScrollable: true,
                          tabs: [
                            Tab(
                              text: "Favourites",
                            ),
                            Tab(
                              text: "Recents",
                            ),
                            Tab(
                              text: "All",
                            ),
                          ]),
                      IconButton(onPressed: (() {}), icon: Icon(Icons.menu)),
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
                  child: TabBarView(children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TaskCard2(
                            progressColor: const Color(0xffB0D97F),
                            groupTitle: "Design",
                            title: "Unity Dashboard ☺",
                          ),
                          TaskCard2(
                            progressColor: const Color(0xffFFE1AC),
                            groupTitle: "Marketing",
                            title: "Instagram Shots ✍",
                          ),
                          TaskCard2(
                            progressColor: const Color(0xffB2D29D),
                            groupTitle: "Design",
                            title: "Cubbles 🤓",
                          ),
                          TaskCard2(
                            progressColor: const Color(0xffB2D29D),
                            groupTitle: "Design",
                            title: "Ui8 Platfrom 🤠",
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Tab View 2',
                    ),
                    Text(
                      'Tab View 3',
                    )
                  ]),
                ))
              ],
            ),
          ),
        )
      ],
    );
  }

  void search(query) {}
}
