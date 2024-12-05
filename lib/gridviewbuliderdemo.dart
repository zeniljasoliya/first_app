import 'package:first_app/model_practice/row_data.dart';
import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
            itemCount: griddata.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 3),
            itemBuilder: (context, index) => Container(
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(griddata[index]['icon']),
                  Text(griddata[index]['name']),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
