import 'package:flutter/material.dart';

class MailDemo extends StatelessWidget {
  const MailDemo({super.key});

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
            commontile4(
                icon: Icons.group_outlined,
                color1: Colors.blue.shade500,
                text1: "Social",
                text2:
                    "Udemy,Instagram,LinkedIn,Facebook,Messenger,Snapchat,Facebook",
                color2: Colors.blue.shade500,
                text3: "99+ new"),
            commontile5(
              color: Colors.green.shade500,
              text1: "C",
              text2: "Coursera",
              text3: "26 May",
              text4: "Gain in-demand skills to grow your career",
              text5:
                  "Earning a certificate from a world-class university on Coursera is a great way to build new skills, enhance your resume, and expand your career opportunities.",
            ),
            commontile5(
              color: Colors.purple.shade200,
              text1: "G",
              text2: "Groww Digest",
              text3: "26 May",
              text4:
                  "Rise in India’s smartwatch shipments, decline in forex, & more - Groww Digest (every day)",
              text5:
                  "In this, existing promoters or larger shareholders of a company offer their shares for sale to the public through a stock exchange.",
            ),
            commontile5(
              color: Colors.orange,
              text1: "A",
              text2: "aadhar",
              text3: "23 May",
              text4: "Aadhaar XXXX XXXX 9773: Authentication  Successful",
              text5:
                  "Your Aadhaar number XXXX XXXX 9773 was used successfully to carry out Authentication using 'Fingerprint'  on 23/05/2023 at 10:27:59 Hrs at a device deployed by National Informatics Centre",
            ),
            commontile4(
                icon: Icons.local_offer_outlined,
                color1: Colors.green.shade500,
                text1: "Promotions",
                text2:
                    "MyGov,Groww Digest,Hero MoterCrop,HP India,Microsoft Rewards,Prime Minister`s Office,Canva",
                color2: Colors.green.shade500,
                text3: "99+ new"),
            commontile5(
              color: Colors.blue.shade200,
              text1: "Q",
              text2: "Quora Digest",
              text3: "22 May",
              text4:
                  "A fake FIR is registered against me. What should I do so that I start believing in th...?",
              text5:
                  "If an FIR is registered against you, the police will in all probability investigate the case. If it’s a fake FIR and no case is found against you by the police, the",
            ),
            commontile5(
              color: Colors.yellowAccent,
              text1: "L",
              text2: "Learning Rooms",
              text3: "21 May",
              text4:
                  "[SAP Next-Gen Learning Room - Students Corner] Activity for May 14 through May 21",
              text5:
                  "Please note that you must be logged in to the SAP Learning Hub with an active session prior to accessing any of the links contained in this email.",
            ),
            commontile5(
              color: Colors.deepOrange.shade300,
              text1: "N",
              text2: "National Disaster management",
              text3: "21 May",
              text4: "NDMA's Newsletter- AAPDA SAMVAAD- April 2023 Edition",
              text5:
                  "NDMA along with its stakeholders from Delhi Fire Service, MHA, NDRF, NSG, CISF, NCS, IB , Delhi Police organises 'Sensitization cum Mock",
            ),
            commontile5(
              color: Colors.grey,
              text1: "B",
              text2: "Bank of Baroda",
              text3: "19 May",
              text4: "Your Dreams Pre-Approved",
              text5:
                  "If you dont see any images, please click here to see a web based version of this e-mail.",
            ),
            commontile5(
              color: Colors.green.shade500,
              text1: "H",
              text2: "HSBC Mutual Fund",
              text3: "17 May",
              text4: "Money Talks - May 2003",
              text5:
                  "Wrapping up the month with a message from the CEO's desk, the latest product updates, industry trends and more.",
            ),

            // FloatingActionButton.extended(
            //   icon: const Icon(
            //     Icons.add,
            //   ),
            //   onPressed: () {},
            //   label: const Text('navigation'),
            // ),
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

Widget commontile4({
  required IconData icon,
  required Color color1,
  required String text1,
  required String text2,
  required Color color2,
  required String text3,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: color1,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
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
                  text2,
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
            color: color2,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Text(
            text3,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        )
      ],
    ),
  );
}

Widget commontile5({
  required Color color,
  required String text1,
  required String text2,
  required String text3,
  required String text4,
  required String text5,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: color,
          child: Text(
            text1,
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
                text2,
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
                  text4,
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
                  text5,
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
                text3,
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
  );
}
