import 'package:first_app/model_practice/row_data.dart';
import 'package:flutter/material.dart';

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 3,
            childAspectRatio: 1,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            physics: const BouncingScrollPhysics(),
            children: List.generate(
              griddata.length,
              (index) => Container(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(griddata[index]['icon']),
                    Text(griddata[index]['name']),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
