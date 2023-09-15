import 'package:flutter/material.dart';

class NavigationHelper {
  /// Push new page to navigation stack
  static void navigateTo(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}