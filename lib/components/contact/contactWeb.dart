import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_protfolio/listenerProviderForApp/schedule.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Get In Touch,",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Consumer<MySchedule>(
            builder: (context, value, child) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 58),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 6,
                          width: 350,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 3),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "With Email :",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 0,
                          ),
                          child: Text(
                            "kunjkanani511@gmail.com",
                            style: TextStyle(
                              fontSize: 18,
                              color: value.darkTheme
                                  ? Colors.white
                                  : Colors.blueGrey,
                            ),
                          ),
                        ),
                        Text(
                          "kunjkanani27@gmail.com",
                          style: TextStyle(
                            fontSize: 18,
                            color: value.darkTheme
                                ? Colors.white
                                : Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 58),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 6,
                          width: 350,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.deepPurpleAccent, width: 3),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "With Whatsapp/Signal :",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 8.0),
                          child: Text(
                            "+91 9726621720 ",
                            style: TextStyle(
                              fontSize: 18,
                              color: value.darkTheme
                                  ? Colors.white
                                  : Colors.blueGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "+91 9265274350",
                            style: TextStyle(
                              fontSize: 18,
                              color: value.darkTheme
                                  ? Colors.white
                                  : Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 58),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          height: 6,
                          width: 350,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green, width: 3),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "With Residence Address :",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 8.0),
                          child: Text(
                            "'Palak', Near Huzur Palace, Jadav Pan Street,",
                            style: TextStyle(
                              fontSize: 18,
                              color: value.darkTheme
                                  ? Colors.white
                                  : Colors.blueGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 8.0, left: 8.0),
                          child: Text(
                            "Street No: 3, Porbandar, Gujrat, India",
                            style: TextStyle(
                              fontSize: 18,
                              color: value.darkTheme
                                  ? Colors.white
                                  : Colors.blueGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Pin Code: 360575",
                            style: TextStyle(
                              fontSize: 18,
                              color: value.darkTheme
                                  ? Colors.white
                                  : Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Text(
          "Being a tea fan, \n if you would like to discuss some of your project or interview \n me, \n feel free to invite me over a cup of tea by dropping mail.",
          textAlign: TextAlign.center,
          style: GoogleFonts.indieFlower(
            fontSize: 38,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                "This web is developed in Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: MaterialButton(
                onPressed: () {
                  launch("https://github.com/KunjKanani/my-portfolio");
                },
                color: Colors.transparent,
                highlightColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                hoverElevation: 0,
                splashColor: Colors.transparent,
                elevation: 0,

                child: Text(
                  " Github",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

          ],
        )
      ],
    );
  }
}
