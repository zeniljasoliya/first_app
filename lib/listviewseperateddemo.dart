import 'package:flutter/material.dart';

class ListViewSeparatedDemo extends StatelessWidget {
  ListViewSeparatedDemo({super.key});
  final List frd = ['zenil', 'parth', 'dhruv', 'meet', 'jash', 'jeet'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Text(frd[index]),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: frd.length)),
        ],
      ),
    );
  }
}
