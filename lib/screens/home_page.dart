import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zkoportfolio/compontents/techiuse_card.dart';

class HomePage extends StatelessWidget {
  Color bgColor = Color(0xff231f1d);
  Color textColor = Color(0xffE9E6D5);
  Color techBgColor = Color.fromARGB(255, 122, 117, 115);
  List<TechCard> techCardList = [
    TechCard(techName: "Javascript", techIcon: FontAwesomeIcons.js),
    TechCard(techName: "React Js", techIcon: FontAwesomeIcons.react),
    TechCard(techName: "Git", techIcon: FontAwesomeIcons.git),
    TechCard(techName: "Docker", techIcon: FontAwesomeIcons.docker),
    TechCard(techName: "Python", techIcon: FontAwesomeIcons.python),
    TechCard(techName: "PHP", techIcon: FontAwesomeIcons.php),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Text("Hi I'm",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 22,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w900)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hammoudi",
                          style: TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.bold)),
                      Text("Mohammed",
                          style: TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.bold)),
                      Text("Zakaria",
                          style: TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Icon(FontAwesomeIcons.linkedin,
                            color: textColor, size: 28),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Icon(FontAwesomeIcons.github,
                            color: textColor, size: 28),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Icon(FontAwesomeIcons.twitter,
                            color: textColor, size: 28),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Icon(FontAwesomeIcons.instagram,
                            color: textColor, size: 28),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 35,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/zikopic.png",
                  height: 400,
                ),
              ),
              Divider(
                height: 26,
              ),
              Divider(
                color: textColor,
                thickness: 0.3,
                endIndent: 15,
                indent: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.html5,
                                color: textColor, size: 17),
                            VerticalDivider(
                              width: 9,
                            ),
                            Text("Front-end Developer",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 17,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.locationDot,
                                color: textColor, size: 17),
                            VerticalDivider(
                              width: 9,
                            ),
                            Text("Oran,Algeria",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 17,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.graduationCap,
                                color: textColor, size: 17),
                            VerticalDivider(
                              width: 9,
                            ),
                            Text("High School Student",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 17,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: textColor,
                thickness: 0.3,
                endIndent: 15,
                indent: 15,
              ),
              Divider(
                height: 26,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About Me",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 30,
                          // fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700)),
                  Divider(
                    height: 10,
                  ),
                  Text(
                      "I’m obsessed with making cool things  on the net, interested in machine learning and web development and I’m starving to learn new stuff !",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700)),
                  Divider(
                    height: 10,
                  ),
                  Text(
                      "I'm confident in my ability to create high-quality web applications. ",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700)),
                ],
              ),
              Divider(
                height: 22,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tech I use",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 30,
                          // fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700)),
                  Divider(
                    height: 1,
                  ),
                  Container(
                    child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 140,
                                childAspectRatio: 1.2,
                                crossAxisSpacing: 22,
                                mainAxisSpacing: 14),
                        itemCount: techCardList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return techCardList[index];
                        }),
                  ),
                ],
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}
