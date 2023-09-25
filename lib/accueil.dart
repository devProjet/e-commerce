import 'package:android_studio_apk/contents/square.dart';
import 'package:android_studio_apk/tab/tab_cart/tab_content_cart.dart';
import 'package:android_studio_apk/tab/tab_content.dart';
import 'package:android_studio_apk/tab/tab_content_computer.dart';
import 'package:flutter/material.dart';

import 'contents/circle.dart';

class Accueil extends StatelessWidget {
  Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.phone_android)),
              Tab(icon: Icon(Icons.computer)),
              Tab(icon: Icon(Icons.shopping_cart)),
            ],
          ),
          title: const Text('Simple Demo'),
        ),
        body: TabBarView(
          children: [
            //SmartPhone Content
            Tab_content(),

            //Computer content
            Tab_content_computer(),

            //Cart list content
            Tap_content_cart(),
          ],
        ),
      ),
    );
  }
}
