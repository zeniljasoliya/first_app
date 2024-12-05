import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WhatsappDemo1 extends StatelessWidget {
  WhatsappDemo1({super.key});
  List<Map<String, dynamic>> data = [
    {
      'dp': "assets/images/zenil.jpeg",
      'title': "Zenil Jasoliya",
      'subtitle': "Hello",
      'time': "5:27PM"
    },
    {
      'dp': "assets/images/2.jpg",
      'title': "Meet Kukadiya",
      'subtitle': "Good Morning",
      'time': "5:00am"
    },
    {
      'dp': "assets/images/3.jpg",
      'title': "Yash Kikani",
      'subtitle': "hmmm",
      'time': "4:27pm"
    },
    {
      'dp': "assets/images/4.jpg",
      'title': "Dhruv Mangaroliya",
      'subtitle': "ok",
      'time': "4:27pm"
    },
    {
      'dp': "assets/images/5.jpg",
      'title': "Bhargav Patel",
      'subtitle': "Phota moakl",
      'time': "10:57am"
    },
    {
      'dp': "assets/images/6.jpg",
      'title': "Jeel Jasoliya",
      'subtitle': "Happy Birthday",
      'time': "12:01am"
    },
    {
      'dp': "assets/images/2.jpg",
      'title': "Dhruveel Chahodiya",
      'subtitle': "Shu chale che",
      'time': "8:27pm"
    },
    {
      'dp': "assets/images/8.jpg",
      'title': "Vatsal Gabani",
      'subtitle': "Good Night",
      'time': "11:27pm"
    },
    {
      'dp': "assets/images/8.jpg",
      'title': "Vatsal Gabani",
      'subtitle': "Good Night",
      'time': "11:27pm"
    },
    {
      'dp': "assets/images/8.jpg",
      'title': "Vatsal Gabani",
      'subtitle': "Good Night",
      'time': "11:27pm"
    },
    {
      'dp': "assets/images/8.jpg",
      'title': "Vatsal Gabani",
      'subtitle': "Good Night",
      'time': "11:27pm"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          padding:
              const EdgeInsets.only(top: 10, left: 15, bottom: 10, right: 15),
          width: double.infinity,
          height: 90,
          color: Colors.teal.shade800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'WhatsApp',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 20,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.group,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    'Chats',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Status',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Calls',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
              child: Column(
            children: List.generate(
                data.length,
                (index) => ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(data[index]['dp']),
                      ),
                      title: Text(data[index]['title']),
                      subtitle: Text(data[index]['subtitle']),
                      trailing: Text(data[index]['time']),
                    )),
          )),
        ),
      ]),
    );
  }
}
