import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({
    super.key,
  });

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4.0,
          children: [
            Text('Count: $count'),
            Row(
              spacing: 10.0,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      count = 0;
                    });
                  },
                  child: Text("Reset"),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: const Text("Click me"),
                ),
              ],
            ),
            GestureDetector(
              onLongPress: () {
                setState(() {
                  count += 50;
                });
              },
              onVerticalDragUpdate: (details) {
                setState(() {
                  count++;
                });
              },
              child: SizedBox(
                width: 256.0,
                height: 256.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  alignment: Alignment.center,
                  child: Text("Long press me to add 50."),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
