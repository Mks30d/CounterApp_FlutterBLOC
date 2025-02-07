import 'package:counter_app_flutter_bloc/equatableTut.dart';
import 'package:counter_app_flutter_bloc/ui/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
