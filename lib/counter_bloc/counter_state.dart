import 'package:flutter/material.dart';

abstract class CounterState {}

class CounterInit extends CounterState {
  int counter;
  final color;
  CounterInit(this.counter, this.color);
}

class UpdateCounter extends CounterState {
  int counter;
  UpdateCounter(this.counter);
}
