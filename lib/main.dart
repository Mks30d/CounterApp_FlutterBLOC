import 'package:counter_app_flutter_bloc/bloc/counter/counter_bloc.dart';
import 'package:counter_app_flutter_bloc/bloc/switch/switch_bloc.dart';
import 'package:counter_app_flutter_bloc/bloc/todo_app/todo_bloc.dart';
import 'package:counter_app_flutter_bloc/equatableTut.dart';
import 'package:counter_app_flutter_bloc/ui/counter/counter_screen.dart';
import 'package:counter_app_flutter_bloc/ui/switch/switch_example.dart';
import 'package:counter_app_flutter_bloc/ui/todo_app/todo_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // created the bloc and every child widget can access bloc variables
        BlocProvider(create: (context) => CounterBloc(),),
        BlocProvider(create: (context) => SwitchBloc(),),
        // BlocProvider(create: (context) => TodoBloc(),),// OR
        BlocProvider(create: (_) => TodoBloc(),),
      ],
      child: const MaterialApp(
        title: 'Flutter BLoc',
        debugShowCheckedModeBanner: false,
        // home: SwitchExample(),
        home: ToDoApp(),
      ),
    );
  }
}
