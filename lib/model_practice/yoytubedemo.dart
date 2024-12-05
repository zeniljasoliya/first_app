import 'package:first_app/model_practice/model_class.dart';
import 'package:first_app/model_practice/row_data.dart';
import 'package:flutter/material.dart';

List<YoutubeData> ytdata() {
  List<YoutubeData> data = [];
  for (var ele in youtubedata) {
    data.add(YoutubeData.formJson(ele));
  }
  return data;
}

// ignore: must_be_immutable
class YoutubeDemo2 extends StatelessWidget {
  YoutubeDemo2({super.key});
  List<YoutubeData> d = ytdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.grey.shade700,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        height: 60,
                        width: 150,
                        child: Image(
                          image: AssetImage(
                            "assets/images/youtube.png",
                          ),
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.connected_tv_outlined,
                            size: 25,
                          ),
                          Icon(
                            Icons.notification_add_outlined,
                            size: 25,
                          ),
                          Icon(
                            Icons.search,
                            size: 25,
                          ),
                          CircleAvatar(
                            radius: 18,
                            backgroundImage:
                                AssetImage('assets/images/zenil.jpeg'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(
                    youtubedata.length,
                    (index) => Column(
                          children: [
                            Stack(children: [
                              Container(
                                height: 300,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(d[index].image1!),
                                  fit: BoxFit.cover,
                                )),
                              ),
                              Positioned(
                                right: 5,
                                bottom: 5,
                                child: Container(
                                  height: 17,
                                  width: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Colors.black,
                                  ),
                                  child: Text(
                                    d[index].text1!,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        overflow: TextOverflow.clip),
                                  ),
                                ),
                              )
                            ]),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage(d[index].image2!),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 411,
                                            child: Text(
                                              d[index].text2!,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  overflow: TextOverflow.clip),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.more_vert,
                                            size: 20,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                      Text(
                                        d[index].text3!,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.40),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            overflow: TextOverflow.clip),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
              )
            ],
          ),
        ),
        bottomNavigationBar: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 10, top: 3, right: 10),
            height: 45,
            color: const Color.fromARGB(255, 217, 213, 213),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                commontile1(icon: Icons.home_filled, text: "Home"),
                commontile1(icon: Icons.show_chart_sharp, text: "Shorts"),
                FloatingActionButton.small(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Create",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Icon(Icons.close),
                              ],
                            ),
                            commontile2(
                                icon: Icons.show_chart_outlined,
                                text: "Create a Short"),
                            commontile2(
                                icon: Icons.upgrade_outlined,
                                text: "Upload a video"),
                            commontile2(icon: Icons.live_tv, text: "Go live"),
                            commontile2(
                                icon: Icons.person_add_alt_outlined,
                                text: "Go Live Together"),
                            commontile2(
                                icon: Icons.edit_square, text: "Create a post"),
                          ],
                        ),
                      ),
                    );
                  },
                  child: const Icon(Icons.add),
                ),
                commontile1(
                    icon: Icons.subscriptions_outlined, text: "Subscription"),
                commontile1(
                    icon: Icons.video_library_outlined, text: "Library"),
              ],
            ),
          ),
        ));
  }
}

Widget commontile1({
  required IconData icon,
  required String text,
}) {
  return Column(
    children: [
      Icon(icon),
      Text(text),
    ],
  );
}

Widget commontile2({
  required IconData icon,
  required String text,
}) {
  return Row(
    children: [
      CircleAvatar(
          radius: 20,
          backgroundColor: const Color.fromARGB(186, 215, 213, 213),
          child: Icon(
            icon,
            color: Colors.black54,
          )),
      const SizedBox(
        width: 10,
      ),
      Text(text),
    ],
  );
}
