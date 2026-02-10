import 'package:flutter/material.dart';
import 'package:popup_menu_button/data/menu_items.dart';
import 'package:popup_menu_button/model/menu_item.dart';
import 'package:popup_menu_button/page/settings_page.dart';
import 'package:popup_menu_button/page/share_page.dart';
import 'package:popup_menu_button/page/signOut_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false, // removing the red banner
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // page layout structure
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenu Button'),
        centerTitle: true,
        actions: [
          // PopMenuButton for creating the 3-dot menu in the AppBar
          PopupMenuButton<MenuItem>(
            onSelected: (item) => onSelected(context, item), // handling Delection
            itemBuilder: (context) => [
              // build first group of menu items (Settings & share)
              ...MenuItems.itemsFirst.map(buildItem).toList(),
              const PopupMenuDivider(), // visible line divider between groups
              // build second group of menu items (SignOut)
              ...MenuItems.itemsSecond.map(buildItem).toList(),
            ],
          ),
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }

  // Helper method to build each menu item with it's Icon & text
  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem<MenuItem>(
    value: item, // for informing the onSelector which item selected
    child: Row(
      children: [
        Icon(item.icon, color: Colors.black), // menu icon
        const SizedBox(width: 8), // space between icon and text
        Text(item.text), // menu labeled as text
      ],
    ),
  );

  // Handling navigation across different pages when item is selected
  void onSelected(BuildContext context, MenuItem item) {
    if (item == MenuItems.itemSettings) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SettingsPage()),
      );
    } else if (item == MenuItems.itemShare) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SharePage()),
      );
    } else if (item == MenuItems.itemSignOut) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignOutPage()),
      );
    }
  }
}