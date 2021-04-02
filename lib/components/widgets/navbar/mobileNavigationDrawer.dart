import 'package:flutter/material.dart';
import 'package:my_protfolio/components/widgets/navbar/navDrawerHeader.dart';
import 'package:my_protfolio/components/widgets/navbar/navDrawerItem.dart';
import 'package:my_protfolio/listenerProviderForApp/schedule.dart';
import 'package:provider/provider.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, value, child) {
        return Container(

          width: 300,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 16),
            ],
            color: value.darkTheme ? Color.fromRGBO(48, 48, 48, 1) : Colors.white,
          ),
          child: Column(
            children: [
              NavDrawerHeader(),
              DrawerItem(title: "Intro",
                icon: Icons.dashboard_rounded,
                loadView: "Intro",),
              DrawerItem(
                title: "Skill And Work",
                icon: Icons.pending_actions_outlined,
                loadView: "Skill&Work",),
              DrawerItem(title: "Resume",
                icon: Icons.book_outlined,
                loadView: "Resume",),
              DrawerItem(title: "Contact",
                icon: Icons.contact_mail,
                loadView: "Contact",),
            ],
          ),
        );
      },

    );
  }
}
