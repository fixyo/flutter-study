import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('hello flutter')),
      body: const HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: [
          // 对子元素定位，配合stack使用。相对于stack的父元素定位，如果stack没有被其他元素包裹，则相对于屏幕定位
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
          const Positioned(
              right: 0,
              child: Text('hello flutter')
          )
        ],
      ),
    );
  }
}
