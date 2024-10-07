import 'package:counter_bloc_app/bloc/switch/bloc/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Notification'),
                BlocBuilder<SwitchBloc, SwitchState>(builder: (context, state) {
                  return Switch(
                    value: state.isEnabled,
                    onChanged: (value) {
                      print(value);
                      context.read<SwitchBloc>().add(ToggleSwitchEvent());
                    },
                  );
                })
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.2),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Slider(
              value: 0.4,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
