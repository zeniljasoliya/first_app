import 'package:flutter/material.dart';

class ListViewCustomDemo extends StatelessWidget {
  ListViewCustomDemo({super.key});
  final List frd = ['zenil', 'parth', 'dhruv', 'meet', 'jash', 'jeet'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.custom(
                  childrenDelegate: SliverChildBuilderDelegate(
                      (context, index) => Text(frd[index]),
                      childCount: frd.length))),
        ],
      ),
    );
  }
}
