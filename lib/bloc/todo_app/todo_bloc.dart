import 'package:bloc/bloc.dart';
import 'package:counter_app_flutter_bloc/bloc/todo_app/todo_event.dart';
import 'package:counter_app_flutter_bloc/bloc/todo_app/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String> todoList = [];

  TodoBloc() : super(TodoState()) {
    on<AddTodoEvent>(_addTodoEvent);
    on<RemoveTodoEvent>(_removeTodoEvent);
  }

  void _addTodoEvent(AddTodoEvent event, Emitter<TodoState> emit) {
    todoList.add(event.task);
    emit(state.copyWith(todoList: List.from(todoList)));
  }
  void _removeTodoEvent(RemoveTodoEvent event, Emitter<TodoState> emit) {
    todoList.remove(event.task);
    emit(state.copyWith(todoList: List.from(todoList)));
  }
}
