import 'package:equatable/equatable.dart';

class TodoState extends Equatable {
  final List<String> todoList; // as list type of data are present

  TodoState({
    this.todoList = const []
  });

  TodoState copyWith({List<String>? todoList}) {
    return TodoState(
      todoList: todoList??this.todoList
    );
  }

  @override
  List<Object?> get props => [todoList];
}
