import 'package:flutter/material.dart';
import 'package:tabbar/constant/colors.dart';

class TabarWidget extends StatelessWidget {
  const TabarWidget({super.key});
  @override
  build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabar widget'),
          centerTitle: true,
          elevation: 10,
          backgroundColor: kPurple,
          leading: IconButton(
            onPressed: () {
              // Navigator.of(context).pushNamed('drawer');
            },
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kPurple,
                  Colors.red,
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          bottom: const TabBar(
            // isScrollable: true,
            // scrollable true makes align center and take less space
            indicatorColor: Colors.white, // active color
            indicatorWeight: 2, // active thickness
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.travel_explore),
                text: 'Travel',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Star',
              )
            ],
          ),
        ),
        // body: const Center(child: Text('Home')),
        body: const TabBarView(
          children: [
            Icon(
              Icons.home,
              size: 30,
              color: kPurple,
            ),
            Icon(
              Icons.travel_explore,
              size: 30.0,
              color: kPurple,
            ),
            Icon(
              Icons.star,
              size: 30,
              color: kPurple,
            ),
          ],
        ),
      ),
    );
  }
}
