import 'package:flutter/material.dart';
import 'package:my_protfolio/components/skillView/projectDescription.dart';
import 'package:my_protfolio/components/skillView/projectVideoCard.dart';
import 'package:my_protfolio/components/skillView/titleText.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ProjectSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TitleText(titleName: "project"),
          ),
          ProjectDescription(
            projectTitle: "Restaurant Management System",
            projectDescription:
                "This Web-App is design for target multiple restaurant using one module",
          ),
          Row(
            children: [
              CardDesign(
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
              CardDesign(
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
          ),
        ],
      ),
    );
  }
}
