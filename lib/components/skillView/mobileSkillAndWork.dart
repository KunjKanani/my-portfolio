import 'package:flutter/material.dart';
import 'package:my_protfolio/components/skillView/projectDescription.dart';
import 'package:my_protfolio/components/skillView/projectVideoCardMobile.dart';
import 'package:my_protfolio/components/skillView/skillSpace.dart';
import 'package:my_protfolio/components/skillView/titleText.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class MobileViewOfSkillAndWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleText(
          titleName: "Skill",
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expertise(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InterMediate(),
        ),
        TitleText(
          titleName: "Project",
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProjectDescription(
            projectTitle: "Restaurant Management System",
            projectDescription:
            "This Web-App is design for target multiple restaurant using one module",
          ),
        ),
        CardDesignMobile(
          videoTitle: "AngulerJS Dashboard",
          videoDescription:
          "Created WEB to \n manage whole \n restaurant And Android \n App data using \n AngularJS, PHP, \n Bootstrap 4",
          controller: YoutubePlayerController(
            initialVideoId: "mW3yOpdevPY",
            params: YoutubePlayerParams(
              showControls: true,
              showFullscreenButton: true,
              autoPlay: false,
            ),
          ),
        ),
        CardDesignMobile(
          videoTitle: "Flutter App",
          videoDescription:
          "Created Flutter App for \n Accepting order and \n managing order.",
          controller: YoutubePlayerController(
            initialVideoId: "jvElSqLcfAQ",
            params: YoutubePlayerParams(
              showControls: true,
              showFullscreenButton: true,
              autoPlay: false,
            ),
          ),
        ),
      ],
    );
  }
}
