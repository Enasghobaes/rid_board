import 'package:flutter/material.dart';

import 'responsive/view/desktopScaffold.dart';
import 'responsive/view/mobileScaffold.dart';
import 'responsive/responsive_layout.dart';
import 'responsive/view/tabletScaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: responsive_loyout(
        mobilescaffold: mobileScaffold(),
        desktposcaffold: desktopScaffold(),
        tabletscaffold: tabletScaffold(),
      ),
    );
  }
}
