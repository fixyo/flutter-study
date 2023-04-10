import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  String label;
  double top;
  TextLabel(this.label, { super.key, this.top = 10 });

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: top),
      child: Text(label)
    );
  }
}