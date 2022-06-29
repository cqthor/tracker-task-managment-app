import 'package:flutter/material.dart';
import 'package:tracker/widgets/chat_card.dart';
import 'package:tracker/widgets/search.dart';
import '../../models/chat_card.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String query = '';
  List<ChatCard> chatCards = [
    ChatCard(
      name: "Jenny Alxinder",
      lastActivity: "Active now",
      photo: "https://reqres.in/img/faces/7-image.jpg",
    ),
    ChatCard(
      name: "Alex Avishek",
      lastActivity: "Active 1h ago",
      photo: "https://reqres.in/img/faces/8-image.jpg",
    ),
    ChatCard(
      name: "Jafor Dicrose",
      lastActivity: "Active 1h ago",
      photo: "https://reqres.in/img/faces/9-image.jpg",
    ),
  ];

  void search(query) {}
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
              Text("Chat", style: Theme.of(context).textTheme.headline3!),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView.builder(
                itemCount: chatCards.length,
                itemBuilder: ((context, index) {
                  return ChatCardScreen(
                    name: chatCards[index].name,
                    lastActivity: chatCards[index].lastActivity,
                    photo: chatCards[index].photo,
                  );
                })),
          ),
        )
      ],
    );
  }
}
