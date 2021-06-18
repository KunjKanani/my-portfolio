import 'package:flutter/material.dart';
import 'package:my_protfolio/components/contact/contactMobile.dart';
import 'package:my_protfolio/components/contact/contactWeb.dart';
import 'package:my_protfolio/responsive.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> with SingleTickerProviderStateMixin {
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
      builder: (context, child) => Padding(
        padding:
            EdgeInsets.only(right: 200 - _animationController.value, top: 20.0),
        child: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? ContactMobile()
            : ContactWeb(),
      ),
      animation: _animationController,
    );
  }
}
