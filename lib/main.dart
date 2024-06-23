import 'package:flutter/material.dart';
import 'package:landingscreenpage/views/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Roboto"),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const LandingSreen(),
    );
  }
}
