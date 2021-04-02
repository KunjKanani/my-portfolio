import 'package:flutter/material.dart';
import 'package:my_protfolio/components/skillView/mobileSkillAndWork.dart';
import 'package:my_protfolio/components/skillView/projectSpace.dart';
import 'package:my_protfolio/components/skillView/skillSpace.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillAndWork extends StatefulWidget {
  @override
  _SkillAndWorkState createState() => _SkillAndWorkState();
}

class _SkillAndWorkState extends State<SkillAndWork> with SingleTickerProviderStateMixin{
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
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (BuildContext context, Widget child) {
        return Padding(
          padding: EdgeInsets.only(right: 200 - _animationController.value, top: 20.0),
          child: ResponsiveBuilder(
            builder: (context, sizingInformation) {
              return sizingInformation.isMobile || sizingInformation.isTablet
                  ? MobileViewOfSkillAndWork()
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [SkillSpace(), ProjectSpace()],
                    );
            },
          ),
        );
      },
    );
  }
}
