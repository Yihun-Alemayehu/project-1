part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {
  final int counter;
  const CounterEvent({required this.counter});
}

class IncrementEvent extends CounterEvent{
   IncrementEvent({required super.counter});
}

class DecrementEvent extends CounterEvent{
  DecrementEvent({required super.counter});
}