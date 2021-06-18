import 'package:flutter/material.dart';
import 'package:my_protfolio/responsive.dart';

import 'package:provider/provider.dart';
import 'package:my_protfolio/components/contact/contact.dart'
    deferred as contentPage;
import 'package:my_protfolio/components/resume/resume.dart'
    deferred as resumePage;
import 'package:my_protfolio/components/skillView/skillAndWork.dart'
    deferred as skillAndWorkPage;
import 'package:my_protfolio/components/widgets/introView/IntroView.dart'
    deferred as introPage;
import 'package:my_protfolio/components/widgets/navbar/mobileNavbar.dart';
import 'package:my_protfolio/components/widgets/navbar/mobileNavigationDrawer.dart';
import 'package:my_protfolio/listenerProviderForApp/schedule.dart';
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
  final EdgeInsets mobileViewPadding = EdgeInsets.symmetric(
    horizontal: 30.0,
    vertical: 20.0,
  );
  final EdgeInsets desktopViewPadding = EdgeInsets.symmetric(
    horizontal: 140.0,
    vertical: 20.0,
  );

  @override
  Widget build(BuildContext context) {
    var mobileView =
        Responsive.isMobile(context) || Responsive.isTablet(context)
            ? true
            : false;

    return Scaffold(
      drawer: mobileView ? NavigationDrawer() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            mobileView
                ? Padding(
                    padding:
                        mobileView ? mobileViewPadding : desktopViewPadding,
                    child: MobileNavbar())
                : Padding(
                    padding:
                        mobileView ? mobileViewPadding : desktopViewPadding,
                    child: NavbarView(),
                  ),
            Padding(
              padding: mobileView ? mobileViewPadding : desktopViewPadding,
              child: Consumer<MySchedule>(
                builder: (BuildContext context, value, Widget child) {
                  if (value.viewName == "Intro") {
                    return FutureBuilder(
                      future: introPage.loadLibrary(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return introPage.IntroView();
                        } else {
                          return LinearProgressIndicator(
                            minHeight: 6,
                          );
                        }
                      },
                    );
                  } else if (value.viewName == "Skill&Work") {
                    return FutureBuilder(
                      future: skillAndWorkPage.loadLibrary(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return skillAndWorkPage.SkillAndWork();
                        } else {
                          return LinearProgressIndicator(
                            minHeight: 6,
                          );
                        }
                      },
                    );
                  } else if (value.viewName == "Resume") {
                    return FutureBuilder(
                      future: resumePage.loadLibrary(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return resumePage.Resume();
                        } else {
                          return LinearProgressIndicator(
                            minHeight: 6,
                          );
                        }
                      },
                    );
                  } else if (value.viewName == "Contact") {
                    return FutureBuilder(
                      future: contentPage.loadLibrary(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return contentPage.Contact();
                        } else {
                          return LinearProgressIndicator(
                            minHeight: 6,
                          );
                        }
                      },
                    );
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
