import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyCustomFormPage(),
  ));
}

class MyCustomFormPage extends StatefulWidget {
  @override
  _MyCustomFormPageState createState() => _MyCustomFormPageState();
}

class _MyCustomFormPageState extends State<MyCustomFormPage> {
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Focus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              autofocus: true,
            ),
            TextField(
              focusNode: myFocusNode,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => myFocusNode.requestFocus(),
        tooltip: 'Focus Second Text Field',
        child: Icon(Icons.edit),
      ),
    );
  }
}
