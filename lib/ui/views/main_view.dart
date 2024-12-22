import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              print("Create list");
            },
            foregroundColor: Colors.grey[50],
            backgroundColor: Colors.blue,
            shape: CircleBorder(),
            mini: true,
            child: Icon(
              Icons.check_box_outlined,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              print("Create note");
            },
            foregroundColor: Colors.grey[50],
            backgroundColor: Colors.blue,
            shape: CircleBorder(),
            mini: true,
            child: Icon(
              Icons.create_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4.0,
          children: [
            Text('Je suis une application de notes.'),
          ],
        ),
      ),
    );
  }
}
