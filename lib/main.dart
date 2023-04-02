import 'package:flutter/material.dart';
// import 'package:vector_math/vector_math_64.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('hello flutter'), centerTitle: true),
      body: Column(
        children: const [
          MyApp(),
          MyButton()
        ],
      )
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.red,
            width: 2
          ),
          borderRadius: BorderRadius.circular(9),
          boxShadow: const [
             BoxShadow(
              color: Colors.black87,
               blurRadius: 10
            )
          ],
          gradient: const LinearGradient(
              colors: [Colors.red, Colors.yellow],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
        ),
        child: const Text('你好flutter',
          style: TextStyle(
              fontSize: 16,
              color: Colors.black87)
        ),
      )
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      // height: 40,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      transform: Matrix4.translationValues(100, 30, 0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text('按钮', style: TextStyle(color: Colors.white, fontSize: 18),),
    );
  }
}