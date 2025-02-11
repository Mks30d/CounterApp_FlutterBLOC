import 'package:bloc/bloc.dart';
import 'package:counter_app_flutter_bloc/bloc/todo_screen/todo_event.dart';
import 'package:counter_app_flutter_bloc/bloc/todo_screen/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState());
}
