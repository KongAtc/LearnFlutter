import 'package:flutter/material.dart';
import 'package:learning_project/screen/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Learning Flutter"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}
