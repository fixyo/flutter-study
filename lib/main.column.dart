import 'package:flutter/material.dart';

// import 'package:vector_math/vector_math_64.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('hello flutter'), centerTitle: true),
      body: const MyHome()
    ),
  ));
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Padding Widget功能单一，只能实现padding的功能，但是占用内存小
    // return const Padding(
    //   padding: EdgeInsets.all(40),
    //   child: Text('hello flutter')
    // );

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black38,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconContainer(icon: Icons.access_alarm, color: Colors.orange,),
          IconContainer(icon: Icons.abc_rounded, color: Colors.orange,),
          IconContainer(icon: Icons.access_time, color: Colors.orange,)
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  IconContainer({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      alignment: Alignment.center,
      color: color,
      child: Icon(icon, color: Colors.white, size: 40,),
    );
  }
}

