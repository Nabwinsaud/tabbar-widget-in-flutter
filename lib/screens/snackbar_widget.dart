import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({super.key});

  @override
  State<SnackBarWidget> createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    // return Container();;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Snackbar'),
        centerTitle: true,
        // leading: const Icon(Icons.menu),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        elevation: 20,
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(4),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackbar = SnackBar(
              content: const Text('open snackbar'),
              action: SnackBarAction(
                label: 'undo',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          style: ElevatedButton.styleFrom(
              // backgroundColor:
              minimumSize: const Size(140, 40)),
          child: const Text('show snackbar'),
        ),
      ),
    );
  }
}
