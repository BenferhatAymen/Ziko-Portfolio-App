import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TechCard extends StatelessWidget {
  String techName;
  IconData techIcon;
  TechCard({required this.techName, required this.techIcon});
  Color bgColor = Color(0xff231f1d);
  Color textColor = Color(0xffE9E6D5);
  Color techBgColor = Color.fromARGB(255, 85, 84, 84);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      width: 115,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: techBgColor,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Icon(techIcon, color: textColor, size: 36),
            const Divider(
              height: 27,
            ),
            Text(techName,
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900)),
          ]),
        ),
      ),
    );
  }
}
