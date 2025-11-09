import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitScreenCounter extends StatelessWidget {
  const CubitScreenCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CubitCounterView(),
    );
  }
}

class CubitCounterView extends StatelessWidget {
  const CubitCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterState = context.watch<CounterCubit>().state;
    final counterValue = context.watch<CounterCubit>().state.counter;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit counter: ${counterState.transactionCount}'),
        actions: [
          IconButton(
            onPressed: () => {context.read<CounterCubit>().reset()},
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Center(child: Text('Counter value: $counterValue ')),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            onPressed: () => {context.read<CounterCubit>().increaseBy(3)},
            child: const Text('+3'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 2,
            onPressed: () => {context.read<CounterCubit>().increaseBy(2)},
            child: const Text('+2'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 3,
            onPressed: () => {context.read<CounterCubit>().increaseBy(1)},
            child: const Text('+1'),
          ),
        ],
      ),
    );
  }
}
