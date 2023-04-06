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
    // return AspectRatio(
    //   aspectRatio: 2/1,
    //   child: Container(
    //     color: Colors.red,
    //   ),
    // );

    return ListView(
      children: [
        Card(
          margin: const EdgeInsets.all(20),
          elevation: 40, // 阴影
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.asset('images/img01.png', fit: BoxFit.fill,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.asset('images/img02.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text('title'),
                subtitle: const Text('subtitle'),
              )

            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(20),
          elevation: 40, // 阴影
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.asset('images/img01.png', fit: BoxFit.fill,),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage('images/img02.png',

                  ),
                ),
                title: Text('title'),
                subtitle: Text('subtitle'),
              )

            ],
          ),
        ),
      ],
    );

  }
}
