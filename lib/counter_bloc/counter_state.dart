part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final int counter;
  const CounterState({required this.counter});
}

class CounterValue extends CounterState {
  const CounterValue(int value) : super(counter: value);
}
