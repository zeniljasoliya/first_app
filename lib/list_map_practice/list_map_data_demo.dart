import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShowAllStudentData extends StatelessWidget {
  ShowAllStudentData({super.key});
  List<Map<String, dynamic>> studentinfo = [
    {
      'name': "Zenil",
      'lname': "jasoliya",
      'age': 20,
      'bloodgroup': 'O+',
    },
    {
      'name': "Parth",
      'lname': "Kasodariya",
      'age': 2,
      'bloodgroup': 'A+',
    },
    {
      'name': "Dhruv",
      'lname': "Mangarola",
      'age': 20,
      'bloodgroup': 'B+',
    },
    {
      'name': "Meet",
      'lname': "Kukadiya",
      'age': 19,
      'bloodgroup': 'O+',
    },
    {
      'name': "Yash",
      'lname': "Kikani",
      'age': 21,
      'bloodgroup': 'B+',
    },
    {
      'name': "Jigar",
      'lname': "Kikani",
      'age': 20,
      'bloodgroup': 'O+',
    },
    {
      'name': "Jenil",
      'lname': "Kasodariya",
      'age': 2,
      'bloodgroup': 'A+',
    },
    {
      'name': "Dhruv",
      'lname': "Hirpara",
      'age': 20,
      'bloodgroup': 'B+',
    },
    {
      'name': "Meet",
      'lname': "Dh0lakiya",
      'age': 19,
      'bloodgroup': 'O+',
    },
    {
      'name': "Yash",
      'lname': "patel",
      'age': 21,
      'bloodgroup': 'B+',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
            studentinfo.length,
            (index) => ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      studentinfo[index]['age'].toString(),
                    ),
                  ),
                  title: Text(studentinfo[index]['name']),
                  subtitle: Text(studentinfo[index]['lname']),
                  trailing: Text(studentinfo[index]['bloodgroup']),
                )),
      ),
    );
  }
}
