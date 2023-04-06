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
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 45),
          children: const [
            ListTile(
              title: Text('text1'),
            ),
            ListTile(
              title: Text('text'),
            ),
            ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text'),
            ),ListTile(
              title: Text('text last'),
            ),











          ],
        ),
        Positioned(
          bottom: 0,
          width: MediaQuery.of(context).size.width, // 配置子元素的宽度高度
          height: 40,
          child: _getBar(),

        ),
      ],
    );
  }

  Widget _getBar() {
    return Row(
      children: [
        Expanded(
          flex:1,
          child: Container(
            height: 40,
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text('sub nav bar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
            ),
          )
        )
      ],
    );
  }
}
