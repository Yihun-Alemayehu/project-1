part of 'counter_bloc.dart';

abstract class CounterState {
  final int counter;
  const CounterState(this.counter);
}

class CounterValue extends CounterState {
  const CounterValue(int value) : super(value);
}
