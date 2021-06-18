import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_protfolio/listenerProviderForApp/schedule.dart';
import 'package:my_protfolio/responsive.dart';
import 'package:provider/provider.dart';

class IntroView extends StatefulWidget {
  @override
  _IntroViewState createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      upperBound: 200,
      lowerBound: 0,
    );
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var schedule = Provider.of<MySchedule>(context);
    return AnimatedBuilder(
      animation: _animationController,
      builder: (BuildContext context, Widget child) {
        var headingTextSize = Responsive.isMobile(context) ? 30.0 : 44.0;
        var descriptionTextSize = Responsive.isMobile(context) ? 14.0 : 18.0;
        var imageHeightWidth = Responsive.isMobile(context) ? 150.0 : 180.0;
        return Padding(
          padding: EdgeInsets.only(right: 200 - _animationController.value),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                ClipOval(
                  child: Image.asset(
                    "assets/images/kunjBitMoji.PNG",
                    height: imageHeightWidth,
                    width: imageHeightWidth,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "I'm Kunj 🤟",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                Text(
                  "SDE Enthusiast, \nComputer Science Student \nBTech, PDEU",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: headingTextSize),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Text.rich(
                    TextSpan(
                      text: "",
                      children: <TextSpan>[
                        TextSpan(text: "A "),
                        TextSpan(
                            text: "Full Stack ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: "and "),
                        TextSpan(
                            text: "Flutter Developer",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              " with good experience.\n My speciality in Website Development, Flutter App And Web \n Development and Android App Development.",
                        ),
                      ],
                      style:
                          TextStyle(fontSize: descriptionTextSize, height: 1.3),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    var schedule =
                        Provider.of<MySchedule>(context, listen: false);
                    schedule.viewName = "Contact";
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    child: Text(
                      "CONTACT WITH ME",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (state) => Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: MaterialButton(
                    onPressed: () {
                      schedule.darkTheme = !schedule.darkTheme;
                    },
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      child: FaIcon(
                        schedule.darkTheme
                            ? FontAwesomeIcons.solidSun
                            : FontAwesomeIcons.solidMoon,
                      ),
                      alignment: Alignment.center,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
