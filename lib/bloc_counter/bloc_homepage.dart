import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managements/bloc_counter/counter_bloc.dart';

class BlocHomepage extends StatelessWidget {
  const BlocHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    log('BlocHomePage Build Edildi');

    final counterBloc = BlocProvider.of<CounterBloc>(context, listen: false);
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                counterBloc.add(ArttirEvent());
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 16,
            ),
            FloatingActionButton(
              onPressed: () {
                counterBloc.add(AzaltEvent());
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              height: 16,
            ),
            FloatingActionButton(
              onPressed: () {
                counterBloc.add(NTaneArttirEvent(number: 5));
              },
              child: const Icon(Icons.plus_one),
            ),
          ],
        ),
        body: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Center(
              child: Text(state.sayac.toString()),
            );
          },
        ));
  }
}
