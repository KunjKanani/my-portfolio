import 'package:flutter/material.dart';
import 'package:my_protfolio/components/skillView/titleText.dart';
import 'package:my_protfolio/listenerProviderForApp/schedule.dart';
import 'package:provider/provider.dart';

class SkillSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleText(titleName: "skill"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expertise(),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InterMediate(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Expertise extends StatelessWidget {
  final List<String> expertiseList = [
    "Expertise",
    "Data Structure",
    "Flutter",
    "HTML & CSS",
    "Bootstrap",
    "PHP",
    "C++"
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, value, child) {
        return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: index == 0
                    ? BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )
                    : index == expertiseList.length - 1
                        ? BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )
                        : null,
                color: index == 0
                    ? Color.fromRGBO(0, 74, 255, 1)
                    : value.darkTheme
                        ? Color.fromRGBO(48, 48, 48, 1)
                        : Colors.white,
                border: index != 0
                    ? Border.all(
                        color: value.darkTheme ? Colors.white : Colors.grey,
                      )
                    : null,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  expertiseList.elementAt(index),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: index == 0
                        ? Colors.white
                        : value.darkTheme
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
              ),
            );
          },
          itemCount: expertiseList.length,
        );
      },
    );
  }
}

class InterMediate extends StatelessWidget {
  final List<String> interMediateList = [
    "Intermediate",
    "Android",
    "JAVA",
    "Firebase",
    "VB.NET"
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, value, child) => ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          // return interMediateList.elementAt(index);
          return Container(
            decoration: BoxDecoration(
              borderRadius: index == 0
                  ? BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )
                  : index == interMediateList.length - 1
                      ? BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      : null,
              color: index == 0
                  ? Color.fromRGBO(0, 74, 255, 1)
                  : value.darkTheme
                      ? Color.fromRGBO(48, 48, 48, 1)
                      : Colors.white,
              border: index != 0
                  ? Border.all(
                      color: value.darkTheme ? Colors.white : Colors.grey,
                    )
                  : null,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                interMediateList.elementAt(index),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: index == 0
                      ? Colors.white
                      : value.darkTheme
                          ? Colors.white
                          : Colors.black,
                ),
              ),
            ),
          );
        },
        itemCount: interMediateList.length,
      ),
    );
  }
}
