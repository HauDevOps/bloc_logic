import 'package:bloc_logic/bloc/basic_bloc.dart';
import 'package:bloc_logic/main.dart';
import 'package:bloc_logic/main_bloc.dart';
import 'package:bloc_logic/page/cat.dart';
import 'package:bloc_logic/page/dog.dart';
import 'package:bloc_logic/page/pig.dart';
import 'package:bloc_logic/router/router_name.dart';
import 'package:flutter/material.dart';

class CustomerRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case router_cat:
        final arg = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              child: CatPage(text: arg),
              bloc: MainBloc(),
            ));
      case router_dog:
        final arg = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              child: DogPage(text: arg),
              bloc: MainBloc(),
            ));
      case router_pig:
        final arg = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              child: PigPage(text: arg),
              bloc: MainBloc(),
            ));
      case router_main:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              child: MyHomePage(),
              bloc: MainBloc(),
            ));
      default:
        return MaterialPageRoute(builder: (_) => null);
    }
  }
}