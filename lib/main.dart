import 'package:flutter/material.dart';
import 'package:popup_menu_button/data/menu_items.dart';
import 'package:popup_menu_button/model/menu_item.dart';
import 'package:popup_menu_button/page/settings_page.dart';
import 'package:popup_menu_button/page/share_page.dart';
import 'package:popup_menu_button/page/signOut_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenu Button'),
        centerTitle: true,
        actions: [
          PopupMenuButton<MenuItem>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              ...MenuItems.itemsFirst.map(buildItem).toList(),
              const PopupMenuDivider(),
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

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem<MenuItem>(
    value: item,
    child: Row(
      children: [
        Icon(item.icon, color: Colors.black),
        const SizedBox(width: 8),
        Text(item.text),
      ],
    ),
  );

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