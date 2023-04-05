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

  Widget getContainerWidget(context, i) {
    
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      // padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Image.asset('images/img0${i + 1}.png', fit: BoxFit.cover,),
          const SizedBox(height: 10),
          Text('${i+1}', style: const TextStyle(fontSize: 24, color: Colors.white),)
        ],
      )
    );
   
  }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   // 主轴的数量（一行）
    //   crossAxisCount: 4,
    //   // 元素间的水平间距 
    //   crossAxisSpacing: 10,
    //   // 元素间的垂直间距  
    //   mainAxisSpacing: 10,
    //   childAspectRatio: 0.5,
    //   padding: const EdgeInsets.all(10),
    //   children: getContainerWidget(),
    // );
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 3,
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      // ),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        // 宽高比
        childAspectRatio: 1
      ),
      itemBuilder: getContainerWidget,
      // 不传itemcount则不知道循环次数
      itemCount: 7,
    );
  }
}
