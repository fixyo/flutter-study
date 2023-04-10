import 'package:flutter/material.dart';
import 'package:flutter_demo_02/components/label.dart';
class ButtonDemo extends StatelessWidget {
const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('button')),
      body: Column(
        children: [
          TextLabel('ElevatedButton: '),
          ElevatedButton(
            child: const Text('normal'),
            onPressed: () {},
          ),
          TextLabel('OutlineButton: '),
          OutlinedButton(
            child: const Text('normal'),
            onPressed: () {},
          ),
          TextLabel('TextButton: '),
          TextButton(
            child: const Text('normal'),
            onPressed: () {},
          ),
          TextLabel('IconButton: '),
          IconButton(
            icon: const Icon(Icons.thumb_up_sharp),
            onPressed: () {},
          ),
          TextLabel('IconButton: '),
          ElevatedButton.icon(
            icon: const Icon(Icons.send),
            label: const Text("发送"),
            onPressed: (){},
          ),
          TextLabel('IconButton: '),
          OutlinedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text("添加"),
            onPressed: (){},
          ),
          TextLabel('IconButton: '),
          TextButton.icon(
            icon: const Icon(Icons.info),
            label: const Text("详情"),
            onPressed: (){},
          ),
        ],
      )
    );
  }
}