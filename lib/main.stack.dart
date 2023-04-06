import 'package:flutter/material.dart';

// import 'package:vector_math/vector_math_64.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Text('hello flutter'), centerTitle: true),
        body: const HomePage()
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.yellow,
        ),
        const Text('hello world')
      ],
    );
  }
}





