import 'package:flutter/material.dart';
import 'package:movie_list/screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie List',
      theme: ThemeData(
        colorScheme: ColorScheme.dark()
      ),
      home: ListScreen(),
    );
  }
}