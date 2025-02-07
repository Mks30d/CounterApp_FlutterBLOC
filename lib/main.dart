import 'package:counter_app_flutter_bloc/bloc/counter/counter_bloc.dart';
import 'package:counter_app_flutter_bloc/equatableTut.dart';
import 'package:counter_app_flutter_bloc/ui/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {  // created the bloc and every child widget can access bloc variables
        return CounterBloc();
      },
      child: const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
      ),
    );
  }
}
