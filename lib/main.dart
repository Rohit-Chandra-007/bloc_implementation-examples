import 'package:counter_bloc_app/bloc/switch/bloc/switch_bloc.dart';
import 'package:counter_bloc_app/ui/switch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    const BlocExamplesApp(),
  );
}

class BlocExamplesApp extends StatelessWidget {
  const BlocExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SwitchBloc(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Elegant Counter UI',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SwitchScreen(),
        ));
  }
}
