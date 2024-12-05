import 'package:flutter/material.dart';

class ListViewBuliderDemo extends StatelessWidget {
  ListViewBuliderDemo({super.key});
  final List frd = ['zenil', 'parth', 'dhruv', 'meet', 'jash', 'jeet'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(frd[index]),
                const Divider(),
              ],
            ),
            itemCount: frd.length,
          ))
        ],
      ),
    );
  }
}
