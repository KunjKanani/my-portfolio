import 'package:flutter/material.dart';

import 'package:my_protfolio/components/contact/contact.dart';
import 'package:my_protfolio/components/resume/resume.dart';
import 'package:my_protfolio/components/skillView/skiillAndWork.dart';
import 'package:my_protfolio/components/widgets/introView/IntroView.dart';
import 'package:my_protfolio/components/widgets/navbar/mobileNavbar.dart';
import 'package:my_protfolio/components/widgets/navbar/mobileNavigationDrawer.dart';
import 'package:my_protfolio/listenerProviderForApp/schedule.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'components/widgets/navbar/NavbarView.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => MySchedule(),
      child: Consumer<MySchedule>(
          builder: (BuildContext context, value, Widget child) {
        return MaterialApp(
          themeMode: value.darkTheme ? ThemeMode.dark : ThemeMode.light,
          darkTheme: ThemeData(
              brightness: value.darkTheme ? Brightness.dark : Brightness.light),
          home: PortfolioApp(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class PortfolioApp extends StatefulWidget {
  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var mobileView = sizingInformation.deviceScreenType ==
                    DeviceScreenType.tablet ||
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? true
            : false;

        return Scaffold(
          drawer: mobileView ? NavigationDrawer() : null,
          body: Padding(
            padding: mobileView
                ? EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0)
                : EdgeInsets.symmetric(horizontal: 140.0, vertical: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  mobileView ? MobileNavbar() : NavbarView(),
                  Consumer<MySchedule>(
                    builder: (BuildContext context, value, Widget child) {
                      if (value.viewName == "Intro") {
                        return IntroView();
                      } else if (value.viewName == "Skill&Work") {
                        return SkillAndWork();
                      } else if (value.viewName == "Resume") {
                        return Resume();
                      } else if (value.viewName == "Contact") {
                        return Contact();
                      }
                      return Container();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
