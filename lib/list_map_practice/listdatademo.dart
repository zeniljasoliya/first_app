import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyFriendList extends StatelessWidget {
  MyFriendList({super.key});
  List friends = [
    "zenil",
    "parth",
    "dhruv",
    "jash",
    "harsh",
    "meet",
    "yash",
    "bhargav",
    "jeet",
    "rushiraj",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children:
              List.generate(friends.length, (index) => Text(friends[index]))),
    );
  }
}
