

import 'package:flutter/material.dart';
import 'package:flutter_demo_02/widgets/button.dart';
import 'package:flutter_demo_02/widgets/iconAndImage.dart';
import 'package:flutter_demo_02/widgets/text.dart';

void main() {
  return runApp(
    MaterialApp(
      title: 'flutter widget',
      // initialRoute: '/text',
      routes: {
        '/text':(context) => const TextDemo(),
        '/button':(context) => const ButtonDemo(),
        '/iconAndImage': (context) => const IconAndImage()
      },
      home: const HomePage()
    )
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter widget')),
      body: ListView(
        children:  [
          ListTile(
            title: const Text('文本及样式'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/text');
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Button'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/button');
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Icon and Image'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/iconAndImage');
            },
          ),
          const Divider()
        ],
      ),
    );
  }
}