import 'package:flutter/material.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid view '),
        elevation: 12,
        backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      // body: GridView.count(
      //   // crossAxisCount: 2,
      //   crossAxisCount:
      //       MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
      //   mainAxisSpacing: 14,
      //   crossAxisSpacing: 14,
      //   children: List.generate(100, (index) {
      //     // return Center(
      //     //   child: Text('Item $index'),
      //     // );
      //     return Container(
      //       height: 100,
      //       width: 100,
      //       color: Colors.blue,
      //       child: Center(
      //         child: Text(
      //           'Item $index',
      //           style: const TextStyle(fontSize: 20, color: Colors.white),
      //         ),
      //       ),
      //       // decoration: BoxDecoration(),
      //     );
      //   }),
      //   // 2 column
      // ),

      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // crossAxisCount: 2,
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(100, (index) {
              // return const Text('');
              return Container(
                height: 100,
                width: 100,
                // color: Colors.green,

                color: index % 2 == 0 ? Colors.green : Colors.blue,
                child: Center(
                  child: Text(
                    'Item $index',
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
