import 'package:flutter/material.dart';

import '../components/label.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();

  // ignore: prefer_final_fields
  TextEditingController _selectionController = TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode? focusScopeNode;

  @override
  void initState() {
    super.initState();
    _unameController.addListener(() {
      print(_unameController.text);
    });

    focusNode1.addListener(() {
      print('focusNode1.hasFocused? ${focusNode1.hasFocus}');
    });

    _selectionController.text ='hello world';
    _selectionController.selection = TextSelection(
      baseOffset: 2, 
      extentOffset:_selectionController.text.length 
    );
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Form and Input')),
      
      body: Theme(
        data: Theme.of(context).copyWith(
          hintColor: Colors.grey[200],
          inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.grey),
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14)
          )
        ),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children:  [
              TextFormField(  
                autofocus: true,
                focusNode: focusNode1,
                controller: _unameController,
                validator: (v) {
                  return v!.trim().isNotEmpty ? null : '用户名不能为空';
                },
                decoration: const InputDecoration(  
                  labelText: '用户名',
                  hintText: '用户名或邮箱',
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                  ),
                  // 获得焦点的输入狂下划线为蓝色
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)
                  )
                ),
              ),
              TextFormField(
                focusNode: focusNode2,
                controller: _pwdController,
                decoration:  const InputDecoration(
                  labelText: '密码',
                  hintText: '登录密码',
                  prefixIcon: Icon(Icons.lock)
                ),
                obscureText: true,
                validator: (v) {
                  return v!.trim().length > 5 ? null : '密码不能少于6位';
                },
              ),
              TextField(
                controller: _selectionController,
              ),
              ElevatedButton(
                onPressed: () {
                  print(_unameController.text);
                  if ((_formKey.currentState as FormState).validate()) {
                    print('valdate pass');
                  }
                }, 
                child: const Text('submit')
              ),
              Builder(
                builder: (context) {
                  return Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          focusScopeNode ??= FocusScope.of(context);
                          focusScopeNode!.requestFocus(focusNode2);
                        }, 
                        child: const Text('移动焦点')
                      ),
                      ElevatedButton(
                        onPressed: () {
                          focusNode1.unfocus();
                          focusNode2.unfocus();
                        }, 
                        child: const Text('隐藏键盘')
                      )
                    ],
                  );
                },
              ),
              TextLabel('自定义样式'),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'please enter username',
                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none,
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.grey)
                  // ),
                  // focusedBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.blue)
                  // )
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}