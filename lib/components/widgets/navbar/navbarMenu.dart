import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_protfolio/components/widgets/navbar/navIemDesign.dart';


class NavbarMenu extends StatefulWidget {

  @override
  _NavbarMenuState createState() => _NavbarMenuState();
}

class _NavbarMenuState extends State<NavbarMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          NavItems(btnText: "Intro", loadView: "Intro", ),
          NavItems(btnText: "Skill And Work", loadView: "Skill&Work",),
          NavItems(btnText: "Resume", loadView: "Resume",),
          NavItems(btnText: "Contact", loadView: "Contact",),

          ClipRRect(
            borderRadius: BorderRadius.circular(80.0),
            child: Image.asset(
              "assets/images/kunj.jpg",
              width: 80,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}