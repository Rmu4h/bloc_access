
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/counter_cubit.dart';
import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import '../screens/third_screen.dart';


class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: HomeScreen(
                    title: 'HomeScreen', color: Colors.blueAccent)));

        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _counterCubit,
              child: SecondScreen(
                  title: 'SecondScreen', color: Colors.redAccent),
            ));

        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _counterCubit,
              child: ThirdScreen(
                  title: 'ThirdScreen', color: Colors.yellowAccent),
            ));

        break;
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}