import 'package:flutter/material.dart';

class MyStudentInfo extends StatelessWidget {
  MyStudentInfo({super.key});
  // ignore: non_constant_identifier_names
  final Map StudentData = {
    'name': "Zenil",
    'lname': "jasoliya",
    'age': 20,
    'bloodgroup': 'O+'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(StudentData['name']),
          Text(StudentData['lname']),
          Text(StudentData['age'].toString()),
          Text(StudentData['bloodgroup'])
        ],
      ),
    );
  }
}
