import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managements/cubit_counter/counter_cubit.dart';

class CubitHomepage extends StatelessWidget {
  const CubitHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    log('CubitHomePage Build Edildi');

    final counterCubit = BlocProvider.of<CounterCubit>(context, listen: false);
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                counterCubit.increase();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 16,
            ),
            FloatingActionButton(
              onPressed: () {
                counterCubit.decrease();
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
        body: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Center(
              child: Text(state.sayac.toString()),
            );
          },
        ));
  }
}
