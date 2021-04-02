import 'package:flutter/material.dart';
import 'iconGrid.dart';
import 'navbarMenu.dart';

class NavbarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [IconGrid(), NavbarMenu()],
      ),
    );
  }
}
