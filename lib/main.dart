import 'package:flutter/material.dart';

import 'ui/app_theme.dart';
import 'ui/views/main_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: MainView(),
    );
  }
}
