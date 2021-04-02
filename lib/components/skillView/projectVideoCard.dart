import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CardDesign extends StatelessWidget {
  final String  videoTitle, videoDescription;
  final YoutubePlayerController controller;

  const CardDesign({Key key, this.videoTitle, this.videoDescription, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,),
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: YoutubePlayerIFrame(
                    controller: controller,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          videoTitle,
                          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "•  $videoDescription",
                          style: TextStyle(fontSize: 18, ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void dispose() {
    controller.close();
  }
}
