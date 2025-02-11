import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  TodoEvent();
}

class AddTodoEvent extends TodoEvent {
  @override
  List<Object?> get props => [];
}

class RemoveTodoEvent extends TodoEvent {
  @override
  List<Object?> get props => [];
}
