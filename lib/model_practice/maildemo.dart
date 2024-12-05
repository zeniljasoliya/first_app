import 'package:first_app/model_practice/model_class.dart';
import 'package:first_app/model_practice/row_data.dart';
import 'package:flutter/material.dart';

List<MailData1> data1() {
  List<MailData1> data = [];
  for (var ele in maildata1) {
    data.add(MailData1.formJson(ele));
  }
  return data;
}

List<MailData2> data2() {
  List<MailData2> data = [];
  for (var ele in maildata2) {
    data.add(MailData2.formJson(ele));
  }
  return data;
}

// ignore: must_be_immutable
class MailDemo2 extends StatelessWidget {
  MailDemo2({super.key});
  List<MailData1> d = data1();
  List<MailData2> a = data2();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 17, bottom: 15),
                child: Text(
                  'Gmail',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                height: 0.6,
                width: double.maxFinite,
                color: Colors.white.withOpacity(0.50),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                child: Row(
                  children: const [
                    Icon(
                      Icons.all_inbox,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'All inboxes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.6,
                width: double.maxFinite,
                color: Colors.white.withOpacity(0.50),
              ),
              Container(
                margin: const EdgeInsets.only(top: 7, bottom: 7, right: 8),
                padding: const EdgeInsets.only(left: 20, right: 15),
                height: 45,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 93, 107, 75),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.inbox,
                      color: Colors.yellow.shade100,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Primary',
                        style: TextStyle(
                          color: Colors.yellow.shade100,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Text(
                      '99+',
                      style: TextStyle(
                        color: Colors.yellow.shade100,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              commontile(
                icon: Icons.local_offer_outlined,
                text1: "Promotions",
                text2: "483 new",
                color: Colors.green.shade500,
              ),
              commontile(
                icon: Icons.group_outlined,
                text1: "Social",
                text2: "38 new",
                color: Colors.blue.shade500,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'All labels',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 10,
                  ),
                ),
              ),
              commontile1(
                icon: Icons.star_border,
                text: "Starred",
              ),
              commontile1(
                icon: Icons.access_time_rounded,
                text: "Snoozed",
              ),
              commontile2(
                icon: Icons.label_important_outline,
                text1: "Important",
                text2: "95",
              ),
              commontile2(
                icon: Icons.send_outlined,
                text1: "Sent",
                text2: "5",
              ),
              commontile1(
                icon: Icons.send_and_archive_outlined,
                text: "Scheduled",
              ),
              commontile1(
                icon: Icons.outbox,
                text: "Outbox",
              ),
              commontile2(
                icon: Icons.drafts_outlined,
                text1: "Drafts",
                text2: "11",
              ),
              commontile2(
                icon: Icons.mail_outline_outlined,
                text1: "All mail",
                text2: "99+",
              ),
              commontile2(
                icon: Icons.error_outline,
                text1: "Spam",
                text2: "7",
              ),
              commontile1(
                icon: Icons.delete,
                text: "Bin",
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Google apps',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 10,
                  ),
                ),
              ),
              commontile3(
                icon: Icons.calendar_today,
                text: "Calender",
              ),
              commontile3(
                icon: Icons.account_circle_outlined,
                text: "Contacts",
              ),
              Container(
                height: 0.6,
                width: double.maxFinite,
                color: Colors.white.withOpacity(0.50),
              ),
              commontile3(
                icon: Icons.settings_outlined,
                text: "Settings",
              ),
              commontile3(
                icon: Icons.help_outline_outlined,
                text: "Help and feedback",
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
              padding: const EdgeInsets.only(left: 15, right: 10),
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: const BorderRadius.all(Radius.circular(35))),
              child: Row(
                children: [
                  Builder(builder: (BuildContext context) {
                    return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ));
                  }),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'Search in emails',
                      style: TextStyle(color: Colors.white.withOpacity(0.50)),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('assets/images/zenil.jpeg'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: Text(
                'Primary',
                style: TextStyle(
                  color: Colors.white,
                  // letterSpacing: 1,
                  fontSize: 10,
                ),
              ),
            ),
            Column(
              children: List.generate(
                  maildata1.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              d[index].icon!,
                              color: d[index].color1!,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    d[index].text1!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Text(
                                      d[index].text2!,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 1,
                                          wordSpacing: 1,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: d[index].color2!,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                d[index].text3!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
            ),
            Column(
              children: List.generate(
                  maildata2.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: a[index].color!,
                              child: Text(
                                a[index].text1!,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    a[index].text2!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Text(
                                      a[index].text4!,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        letterSpacing: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Text(
                                      a[index].text5!,
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.40),
                                        letterSpacing: 1,
                                        fontSize: 10,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    a[index].text3!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.white.withOpacity(0.40),
                                    size: 20,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.grey.shade900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 25,
              width: 50,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 93, 107, 75),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Icon(
                Icons.mail,
                color: Colors.yellow.shade50,
              ),
            ),
            Icon(
              Icons.video_camera_front_outlined,
              color: Colors.yellow.shade50,
            ),
          ],
        ),
      ),
    );
  }
}

Widget commontile({
  required IconData icon,
  required String text1,
  required String text2,
  required Color color,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            text1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),
          ),
        ),
        Container(
          height: 20,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Text(
            text2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 10,
            ),
          ),
        )
      ],
    ),
  );
}

Widget commontile1({
  required IconData icon,
  required String text,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11,
          ),
        ),
      ],
    ),
  );
}

Widget commontile2({
  required IconData icon,
  required String text1,
  required String text2,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            text1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),
          ),
        ),
        Text(
          text2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11,
          ),
        ),
      ],
    ),
  );
}

Widget commontile3({
  required IconData icon,
  required String text,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.yellow.shade100,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11,
          ),
        ),
      ],
    ),
  );
}
