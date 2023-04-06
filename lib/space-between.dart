import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('hi')),
          body: const MyHome(),
        ),
      )
  );
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 200,
    //   height: 200,
    //   color: Colors.red,
    //   child: const Align(
    //     alignment: Alignment.topLeft,
    //     child: Text('hi flutter'),
    //   ),
    // );
    // space-between
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: const [
    //     Text('left'),
    //     Text('right')
    //   ],
    // );

    // space-between
    // return Stack(
    //   children: const [
    //     Align(alignment: Alignment.topLeft, child: Text('left')),
    //     Align(alignment: Alignment.topRight, child: Text('right'))
    //   ],
    // );

    // space-between
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: const [
              Positioned(
                left: 0,
                child: Text('left'),
              ),
              Positioned(
                right: 0,
                child: Text('right'),
              )
            ],
          ),
        )
      ],
    );
  }
}
