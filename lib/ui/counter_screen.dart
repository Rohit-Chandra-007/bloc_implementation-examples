import 'package:counter_bloc_app/bloc/counter/counter_bloc.dart';
import 'package:counter_bloc_app/bloc/counter/events.dart';
import 'package:counter_bloc_app/bloc/counter/states.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();
    // debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elegant Counter UI'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                int counterValue = (state is CounterUpdated) ? state.count : 0;
                debugPrint('rebuild');
                return Text(
                  '$counterValue',
                  style: const TextStyle(
                      fontSize: 48.0, fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterBloc.add(Decrement());
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<OutlinedBorder>(
                      const CircleBorder(),
                    ),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.redAccent),
                    padding: WidgetStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(20)),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    counterBloc.add(Increment());
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<OutlinedBorder>(
                      const CircleBorder(),
                    ),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.green),
                    padding: WidgetStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(20)),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
