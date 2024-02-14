part of 'counter_bloc.dart';

@immutable
abstract class CounterState{
}

class CounterInitial extends CounterState {
  final int counter = 0;
}

class CounterValue extends CounterState {
  final int counter;

  CounterValue({required this.counter});

}
