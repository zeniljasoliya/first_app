import 'package:first_app/gridviewcountdemo.dart';
import 'package:first_app/list_map_practice/youtubedemo.dart';
import 'package:first_app/model_practice/instrgramdemo.dart';
import 'package:first_app/youtubedrawerdemo.dart';

import 'package:flutter/material.dart';

import 'buttondemo.dart';
import 'gridviewbuliderdemo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YoutubeDemo1(),
    );
  }
}
