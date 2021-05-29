import 'package:flutter/material.dart';

class PigPage extends StatefulWidget {
  const PigPage({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  _PigPageState createState() => _PigPageState();
}

class _PigPageState extends State<PigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pig Page'),),
      body: Center(
        child: Column(
          children: [
            Image.asset(''),
            Text(widget.text),
          ],
        ),
      ),
    );
  }
}
