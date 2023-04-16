import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  const CheckboxDemo({super.key});

  @override
  State<CheckboxDemo> createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkbox')),
      body: Column(
      children: [
        Switch(
          value: _switchSelected, 
          onChanged: (v) {
            setState(() {
              _switchSelected = v;
            });
          }
        ),
        Checkbox(
          value: _checkboxSelected, 
          activeColor: Colors.red,
          onChanged: (v) {
            setState(() {
              _checkboxSelected = v!;
            });
          }
        ),
        Text('is switch selected ? $_switchSelected'),
        Text('is checkbox checked ? $_checkboxSelected'),

      ],
    ),
    );
  }
}