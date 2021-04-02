import 'package:flutter/material.dart';
import 'package:my_protfolio/listenerProviderForApp/schedule.dart';
import 'package:provider/provider.dart';

class NavItems extends StatelessWidget {
  final String btnText;
  final String loadView;

  const NavItems({this.btnText, this.loadView});

  @override
  Widget build(BuildContext context) {
    var schedule = Provider.of<MySchedule>(context);
    return MaterialButton(
      mouseCursor: MaterialStateMouseCursor.clickable,
      hoverColor: Colors.transparent,
      textColor: schedule.viewName == loadView ? Colors.blue : Colors.grey,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: () {
        schedule.viewName = loadView;
      },
      child: Text(
        btnText,
        style: TextStyle(
          fontSize: 16,
          fontWeight: schedule.viewName == loadView ? FontWeight.bold : FontWeight.normal
        ),
      ),
    );
  }
}
