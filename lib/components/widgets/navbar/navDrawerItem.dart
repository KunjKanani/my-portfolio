import 'package:flutter/material.dart';
import 'package:my_protfolio/listenerProviderForApp/schedule.dart';
import 'package:provider/provider.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String loadView;

  const DrawerItem({Key key, this.title, this.icon, this.loadView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var schedule = Provider.of<MySchedule>(context);
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: GestureDetector(
        onTap: () {
          schedule.viewName = loadView;
          Scaffold.of(context).openEndDrawer();
        },
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 30,
            ),
            Consumer<MySchedule>(
              builder: (context, value, child) {
                return Text(
                  title,
                  style: TextStyle(fontSize: 18, color: value.darkTheme ? Colors.white : Colors.black
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
