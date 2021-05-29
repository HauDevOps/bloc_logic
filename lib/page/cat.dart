import 'package:flutter/material.dart';

class CatPage extends StatefulWidget {
  const CatPage({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  _CatPageState createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cat Page'),),
      body: Center(
        child: Column(
          children: [
            Text(widget.text ?? ''),
          ],
        ),
      ),
    );
  }
}
