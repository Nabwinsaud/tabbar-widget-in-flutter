import 'package:flutter/material.dart';

class MyGestureDetectorWidget extends StatelessWidget {
  const MyGestureDetectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return GestureDetector();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture detector'),
        elevation: 10,
        backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          print("gesture detected");
        },
        onDoubleTap: () {
          print("double tapped");
        },
        onHorizontalDragDown: (drag) {
          print('horizontal dragged: $drag');
        },
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 200,
            // color: Colors.green,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.lightGreen[500]
              color: Colors.green,
            ),
            child: const Text(
              'gesture detector',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
