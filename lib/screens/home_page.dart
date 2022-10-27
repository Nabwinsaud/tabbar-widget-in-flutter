import 'package:flutter/material.dart';
import 'package:tabbar/constant/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tabbar',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          // centerTitle: true,
          // elevation: 10,
          backgroundColor: kPurple,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            // Icon(Icons.search, size: 30),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add),
            )
          ],
          // elevation is just a shadow
          elevation: 10,
          // titleSpacing: 3,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.card_travel),
                text: 'Travel',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'start',
              )
            ],
          ),
        ),

        // body: const Text('Hello word'),
        body: const TabBarView(
          children: [
            Icon(Icons.menu),
            Icon(Icons.card_travel),
            Icon(Icons.star),
            // order is important
          ],
        ),
      ),
    );
  }
}
