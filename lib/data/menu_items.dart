import 'package:flutter/material.dart';
import 'package:popup_menu_button/model/menu_item.dart';

class MenuItems{
  // first group for menu options, Settings and Share
  static const List<MenuItem> itemsFirst = [
    itemSettings,
    itemShare,
    ];

  // 2nd group of menu options for only SignOut option
  static const List<MenuItem> itemsSecond = [
    itemSignOut,
    ];

  // defining menu item for Settings
  static const itemSettings = MenuItem(
      text: 'Settings',
      icon: Icons.settings,
  );

  // menu item for Share
  static const itemShare = MenuItem(
    text: 'Share',
    icon: Icons.share,
  );

  // menu item for Logout
  static const itemSignOut = MenuItem(
    text: 'Sign out',
    icon: Icons.logout,
  );
}
