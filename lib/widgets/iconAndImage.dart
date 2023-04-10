import 'package:flutter/material.dart';
import 'package:flutter_demo_02/components/label.dart';

class IconAndImage extends StatelessWidget {
  const IconAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: const Text('Icon and Image')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLabel('AssetImage/Image.asset加载本地图片：'),
          Row(
            children:  [
              const Image(
                image: AssetImage('images/img01.png'),
                width: 30,
              ),
              Image.asset('images/img01.png', width: 30,)
            ],
          ),
          TextLabel('NetworkImage/Image.network加载本地图片：'),
          Row(
            children:  [
              const Image(
                image: NetworkImage('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
                width: 30,
              ),
                Image.network('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4', width: 100,
                height: 100,
                color: Colors.blue,
                colorBlendMode: BlendMode.difference,
                // fill 拉伸变形 
                // cover 按宽高比放大后居中填满显示空间，图片不会变形，超出显示空间部分会被裁剪 
                // contain 默认适应规则，保证宽高比例不变的情况下，缩放以适应当前显示空间
                fit: BoxFit.contain
              ),
            ],
          ),
          TextLabel('字体图标'),
          const Text(
            "\uE03e" " \uE237" " \uE287",
            style: TextStyle(
              fontFamily: 'MaterialIcons',
              fontSize: 24,
              color: Colors.green
            )
          )
        ],
      ),
    );
  }
}