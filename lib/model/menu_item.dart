import 'package:flutter/material.dart';
// App's model to be used when creating popup menu button

class MenuItem {
  //consist of Texts and icons
  final String text;
  final IconData icon;

  // constructor
  const MenuItem({
    required this.text,
    required this.icon,
});
}