import 'package:bloc_logic/bloc/basic_bloc.dart';
import 'package:bloc_logic/router/customer_router.dart';
import 'package:bloc_logic/router/router_name.dart';
import 'package:flutter/material.dart';

import 'main_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CustomerRouter.allRoutes,
      initialRoute: router_main,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MainBloc bloc;
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = BlocProvider.of<MainBloc>(context);

    bloc.textStream.listen((router) {
      Navigator.pushNamed(context, router, arguments: textEditingController.text);
    }).onError((error) {
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Input',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String value = textEditingController.text;
                  bloc.textCheck(value);
                },
                child: Text('Click'))
          ],
        ),
      ),
    );
  }
}
