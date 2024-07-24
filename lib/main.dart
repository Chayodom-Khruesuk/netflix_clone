import 'package:flutter/material.dart';
import 'package:flutter_clone_netflix/widgets/screen/pageview/page_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageViewPage(),
    );
  }
}
