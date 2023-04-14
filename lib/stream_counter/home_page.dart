import 'package:flutter/material.dart';
import 'package:state_managements/stream_counter/counter_model.dart';

class StreamHomepage extends StatelessWidget {
  StreamHomepage({super.key});

  final counter = Counter(sayac: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter.increase();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              counter.decrease();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: StreamBuilder<dynamic>(
          stream: counter.stream,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.toString());
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
