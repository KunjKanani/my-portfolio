import 'package:flutter/material.dart';
import 'package:my_protfolio/components/widgets/navbar/iconGrid.dart';

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          IconGrid()
        ],
      ),
    );
  }
}
