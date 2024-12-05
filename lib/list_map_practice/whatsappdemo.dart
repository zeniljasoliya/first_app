import 'package:first_app/model_practice/model_class.dart';
import 'package:first_app/model_practice/row_data.dart';
import 'package:flutter/material.dart';

List<Whatsapp> whatsapp() {
  List<Whatsapp> data = [];
  for (var ele in chat) {
    data.add(Whatsapp.fromJson(ele));
  }
  return data;
}

class WhatsappDemo extends StatelessWidget {
  const WhatsappDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<Whatsapp> d = whatsapp();
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
          child: ListView(
            children: List.generate(
                d.length,
                (index) => ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(d[index].dp!),
                      ),
                      title: Text(d[index].title!),
                      subtitle: Text(d[index].subtitle!),
                      trailing: Text(d[index].time!),
                    )),
          ),
        ),
      ]),
    );
  }
}
