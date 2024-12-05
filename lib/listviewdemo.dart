import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              primary: true,
              reverse: true,
              shrinkWrap: true,
              // ScrollViewKeyboardDismissBehavior.onDrag ,
              itemExtent: 25,
              dragStartBehavior: DragStartBehavior.down,
              physics: const BouncingScrollPhysics(),
              children: List.generate(500, (index) => Text(index.toString())),
            ),
          )
        ],
      ),
    );
  }
}
