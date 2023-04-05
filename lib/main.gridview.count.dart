import 'package:flutter/material.dart';

// import 'package:vector_math/vector_math_64.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('hello flutter'), centerTitle: true),
      body: const MyGrid()
    ),
  ));
}

class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  List<Widget> getContainerWidget() {
    List<Widget> list = [];
    for (int i = 0; i < 9; i++) {
      list.add( 
        Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          // padding: const EdgeInsets.all(10),
          child:  Text('第$i个元素', 
            style: const TextStyle(fontSize: 20)
          ),
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 主轴的数量（一行）
      crossAxisCount: 4,
      // 元素间的水平间距 
      crossAxisSpacing: 10,
      // 元素间的垂直间距  
      mainAxisSpacing: 10,
      childAspectRatio: 0.5,
      padding: const EdgeInsets.all(10),
      children: getContainerWidget(),
    );
  }
}
