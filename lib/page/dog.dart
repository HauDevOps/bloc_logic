import 'package:flutter/material.dart';

class DogPage extends StatefulWidget {
  const DogPage({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  _DogPageState createState() => _DogPageState();
}

class _DogPageState extends State<DogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dog Page'),),
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
