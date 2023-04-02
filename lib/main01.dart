import 'package:flutter/material.dart';
main() {
  runApp(
      MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('hello flutter'), centerTitle: true),
            body: const MyApp()
        ),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('hello flutter==',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 40, color: Colors.cyan)
        )
    );
  }
}