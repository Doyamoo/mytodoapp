// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //アプリ名
      title: 'My Todo App',
      theme: ThemeData(
        //テーマカラー
        primarySwatch: Colors.blue,
      ),

      home: TodoListPage(),
    );
  }
}

// リスト一覧画面用Widget
class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト一覧'),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text('ニンジンを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('玉ねぎを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('砂糖を買う'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // "push"で新規画面に遷移
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              // 遷移先の画面としてリスト追加画面を指定
              return TodoAddPage();
            }),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('リスト追加画面　(クリックで戻る)')),
      ),
    );
  }
}
