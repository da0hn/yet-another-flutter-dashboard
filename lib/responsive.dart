import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  static const _initialWidthMobile = 680;
  static const _initialWidthDesktop = 1200;
  static const _initialWidthTablet = 680;
  static const _edgeWidthTablet = 1200;

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key key,
    @required this.mobile,
    this.tablet,
    @required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < _initialWidthMobile;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= _initialWidthTablet &&
      MediaQuery.of(context).size.width < _edgeWidthTablet;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= _initialWidthDesktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= _initialWidthDesktop) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= _initialWidthTablet && tablet != null) {
      return tablet;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
