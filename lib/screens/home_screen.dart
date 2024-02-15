import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/counter_bloc/counter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          // int value = (state as CounterValue).counter;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${state.counter}'),
                
                TextButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncrementEvent(counter: state.counter));
                  },
                  child: const Text('Increment'),
                ),
                TextButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementEvent(counter: state.counter));
                  },
                  child: const Text('Decrement'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
