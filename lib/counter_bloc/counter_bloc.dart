import 'package:counter_number_bloc/counter_bloc/counter_event.dart';
import 'package:counter_number_bloc/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  var color = Colors.white;
  CounterBloc() : super(CounterInit(0, Colors.white)) {
    on<DecreamentPressed>((event, emit) {
      emit(UpdateCounter(--counter));
    });
    on<IncreamentPressed>((event, emit) {
      emit(UpdateCounter(++counter));
    });
    on<ResetPress>((event, emit) {
      emit(UpdateCounter(counter = 0));
    });
  }
}
