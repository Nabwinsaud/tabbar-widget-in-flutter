import 'package:flutter/material.dart';

class TransParentAppBar extends StatelessWidget {
  const TransParentAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    bool? isDesktop = MediaQuery.of(context).size.width <= 500;
    return Scaffold(
      extendBodyBehindAppBar: true,
      // the image will be appeared inside app bar
      appBar: AppBar(
          title: const Text('Transparent Widget'),
          centerTitle: true,
          leading: const BackButton(),
          backgroundColor: Colors.transparent,
          // backgroundColor: Colors.grey.withOpacity(0.1),
          elevation: 0,
          // elevation is basically shadow of appBar
          // titleSpacing: 20,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
            // Icon(Icons.search),
          ],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ))
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
          ),
      // body: const Center(
      //   child: Text('Hustle bros'),
      // ),

      body: Image.network(
        'https://images.pexels.com/photos/5858199/pexels-photo-5858199.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        // alignment: Alignment.center,
        fit: BoxFit.cover,
        // larger screen the image looks weird specially in web
        width: double.infinity,
        height: double.infinity,
        // width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
