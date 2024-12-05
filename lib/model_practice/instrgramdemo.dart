import 'package:first_app/model_practice/instamodel_class.dart';
import 'package:flutter/material.dart';

import '../model_practice/row_data.dart';

List<InstaStory> instastory() {
  List<InstaStory> data = [];
  for (var ele in story) {
    data.add(InstaStory.formJson(ele));
  }
  return data;
}

List<InstaData> instagramdata() {
  List<InstaData> data = [];
  for (var ele in instadata) {
    data.add(InstaData.formJson(ele));
  }
  return data;
}

// ignore: must_be_immutable
class InstragramDemo extends StatelessWidget {
  const InstragramDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<InstaStory> d = instastory();
    List<InstaData> a = instagramdata();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 7),
              width: double.infinity,
              height: 676,
              // color: Colors.black,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/13.jpeg"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.messenger_outline,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                      physics: const BouncingScrollPhysics(),
                      primary: true,
                      // shrinkWrap: true,
                      children: [
                        ListView(
                          scrollDirection: Axis.horizontal,
                          primary: false,
                          shrinkWrap: true,
                          // physics: const BouncingScrollPhysics(),
                          children: List.generate(
                            story.length,
                            (index) => Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 75,
                                    width: 75,
                                    padding: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.pink,
                                              Colors.orange
                                            ])),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.black, width: 3),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(d[index].images!),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                                Text(
                                  d[index].usernames!,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 13),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            primary: false,
                            physics: const NeverScrollableScrollPhysics(),

                            // physics: const BouncingScrollPhysics(),
                            children: List.generate(
                              instadata.length,
                              (index) => Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 15,
                                                top: 15,
                                                bottom: 12,
                                                right: 7),
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        a[index].image1!),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                a[index].text1!,
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                a[index].text2!,
                                                style: const TextStyle(
                                                    fontSize: 9,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Icon(Icons.more_vert,
                                          color: Colors.white, size: 17),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 9),
                                    child: Container(
                                      width: double.infinity,
                                      height: 300,
                                      // color: Colors.grey,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(a[index].image2!),
                                              fit: BoxFit.fill)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 20, top: 8, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Icon(
                                                Icons.favorite_border_rounded,
                                                color: Colors.white,
                                              ),
                                              Icon(
                                                Icons
                                                    .chat_bubble_outline_outlined,
                                                color: Colors.white,
                                              ),
                                              Icon(
                                                Icons.send_rounded,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                        const Icon(
                                          Icons.save_alt_outlined,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 20, top: 6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "Liked by",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              a[index].text3!,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              a[index].text4!,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              a[index].text5!,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              a[index].text6!,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "... more",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white
                                                      .withOpacity(0.50)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              a[index].text7!,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white
                                                      .withOpacity(0.50)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/zenil.jpeg"),
                                                      fit: BoxFit.cover)),
                                            ),
                                            const SizedBox(
                                              width: 12,
                                            ),
                                            Text(
                                              "Add a comment...",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white
                                                      .withOpacity(0.50)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              a[index].text8!,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white
                                                      .withOpacity(0.50)),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text(
                                              "See translation",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.home_rounded,
              color: Colors.white,
              size: 30,
            ),
            const Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 30,
            ),
            const Icon(
              Icons.add_box_outlined,
              color: Colors.white,
              size: 30,
            ),
            const Icon(
              Icons.movie_outlined,
              color: Colors.white,
              size: 30,
            ),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/zenil.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}
