import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String titleName;

  const TitleText({Key key, this.titleName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      titleName.toUpperCase(),
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
    );
  }
}
