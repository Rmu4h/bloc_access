import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_access/constants/enums.dart';
import 'package:bloc_access/logic/cubit/internet_state.dart';
import 'package:meta/meta.dart';

import 'internet_cubit.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {

  CounterCubit() : super(CounterState(counterValue: 0, wasIncremented: false));

  void increment() => emit(
      CounterState(counterValue: state.counterValue + 1, wasIncremented: true));

  void decrement() => emit(CounterState(
      counterValue: state.counterValue - 1, wasIncremented: false));
}