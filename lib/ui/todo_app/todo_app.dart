import 'package:counter_app_flutter_bloc/bloc/todo_app/todo_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/todo_app/todo_bloc.dart';
import '../../bloc/todo_app/todo_state.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("TODO App"),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.todoList.isEmpty) {
            return Text("Empty Data");
          } else if (state.todoList.isNotEmpty) {
            return ListView.builder(
              itemCount: state.todoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text((index + 1).toString()),
                  // title: Text(state.todoList[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                  ),
                );
              },
            );
          } else {
            return Text("Error!!!");
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            context.read<TodoBloc>().add(AddTodoEvent(task: "Task: "));
          // for (int i = 1; i <= 5; i++) {
          //   // to add task in list when button is clicked
          //   context.read<TodoBloc>().add(AddTodoEvent(task: "Task: " + i.toString()));
          // }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
