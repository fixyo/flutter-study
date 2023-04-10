import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('文本及样式')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'hello world', 
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              height: 1.2,
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed
            )
          ),
          const Text(
            'hello world i am elvis hello world i am elvis hello world i am elvis hello world i am elvis', 
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const Text('hello world', textScaleFactor: 1.5,),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text('textspan')
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Home: "
                ),
                TextSpan(
                  text: 'https: //flutterchina.com',
                  style: TextStyle(
                    color: Colors.blue 
                  ),
                  // recognizer: 
                )
              ]
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text('DefaultTextStyle: ')
          ),
          DefaultTextStyle(
            style: const TextStyle(
              color: Colors.red,
              fontSize: 20
            ),
            textAlign: TextAlign.center, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('hello world'),
                Text('i am jack'),
                Text('i am jack', 
                  style: TextStyle(
                    inherit:false, 
                    color: Colors.green
                  )
                )
              ]
            )
          )
        ]
      ),
    );
  }
}