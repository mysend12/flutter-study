part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();
}

class LoadTodosEvent extends TodosEvent {
  final String username;

  const LoadTodosEvent(this.username);

  @override
  // TODO: implement props
  List<Object?> get props => [username];

}

class AddTodoEvent extends TodosEvent {
  final String todoText;

  const AddTodoEvent(this.todoText);

  @override
  // TODO: implement props
  List<Object?> get props => [todoText];
}

class ToggleTodoEvent extends TodosEvent {
  final String todoTask;

  const ToggleTodoEvent(this.todoTask);

  @override
  // TODO: implement props
  List<Object?> get props => [todoTask];


}