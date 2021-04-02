import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> with SingleTickerProviderStateMixin {
  final String pdfUrl =
      "https://firebasestorage.googleapis.com/v0/b/kunj-kanani.appspot.com/o/Kunj's%20Resume%20(1).pdf?alt=media&token=b757e018-5661-4bac-94df-5750c477d8b4";
  PdfViewer pdfView;

  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      upperBound: 200.0,
      lowerBound: 0.0,
    );
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    pdfView = null;
    _animationController.dispose();
    super.dispose();
  }

  _ResumeState() {
    pdfView = PdfViewer.openFile(
      pdfUrl,
      params: PdfViewerParams(
        scaleEnabled: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return Padding(
          padding:
          EdgeInsets.only(right: 200 - _animationController.value),
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                MaterialButton(
                  child: Text("Download PDF",
                      style: TextStyle(
                        color: Color.fromRGBO(
                          0,
                          0,
                          255,
                          1,
                        ),
                        fontSize: 22,
                      )),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onPressed: () {
                    launch(pdfUrl);
                  },
                ),
                Container(
                  height: 1500,
                  width: 1000,
                  child: pdfView,
                ),
              ],
            ),
          ),
        );
      },
      animation: _animationController,
    );
  }
}
