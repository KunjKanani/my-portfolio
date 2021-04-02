import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class IconGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: Icon(Icons.mail),
          onPressed: () {
            launch("https://mail.google.com/mail/u/0/?fs=1&to=kunjkanani511@gmail.com&tf=cm");
          },
          iconSize: 22.0,
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.linkedinIn),
          onPressed: () {
            launch("https://www.linkedin.com/in/kunj-kanani/");
          },
          iconSize: 22.0,
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.github),
          onPressed: () {
            launch("https://github.com/KunjKanani?tab=repositories");
          },
          iconSize: 22.0,
        ),
      ],
    );
  }
}

