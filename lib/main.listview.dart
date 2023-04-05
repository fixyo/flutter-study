import 'package:flutter/material.dart';

// import 'package:vector_math/vector_math_64.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('hello flutter'), centerTitle: true),
      body: const MyList()
    ),
  ));
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    print('test=============');
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
        ListTile(
          leading: Icon(Icons.icecream),
          title: Text('i am a list title')
        ),
      ],
    );
  }
}
