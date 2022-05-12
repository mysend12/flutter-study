import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/services/todo_service.dart';
import 'package:todo_list/todos/bloc/todos_bloc.dart';

class TodosPage extends StatelessWidget {
  final String username;

  const TodosPage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo list')),
      body: BlocProvider(
        create: (context) =>
            TodosBloc(RepositoryProvider.of<TodoService>(context))
              ..add(LoadTodosEvent(username)),
        child: BlocBuilder<TodosBloc, TodosState>(
          builder: (context, state) {
            if (state is TodosLoadedState) {
              return ListView(children: [
                ...state.tasks.map(
                  (e) => ListTile(
                    title: Text(e.task),
                    trailing: Checkbox(
                      value: e.completed,
                      onChanged: (val) {
                        BlocProvider.of<TodosBloc>(context)
                            .add(ToggleTodoEvent(e.task));
                      },
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Create new Task!'),
                  trailing: const Icon(Icons.create),
                  onTap: () async {
                    final result = await showDialog<String>(
                        context: context,
                        builder: (context) => const Dialog(
                              child: CreateNewTask(),
                            ));
                    if (result != null) {
                      BlocProvider.of<TodosBloc>(context)
                          .add(AddTodoEvent(result));
                    }
                  },
                ),
                ListTile(
                  title: const Text('LOGOUT'),
                  onTap: () async {
                    final result = await showDialog(
                        context: context,
                        builder: (context) => const Dialog(
                              child: _LogoutDialog(),
                            ));
                  },
                )
              ]);
            }
            return Container();
          },
        ),
      ),
    );
  }
}

class CreateNewTask extends StatefulWidget {
  const CreateNewTask({Key? key}) : super(key: key);

  @override
  State<CreateNewTask> createState() => _CreateNewTaskState();
}

class _CreateNewTaskState extends State<CreateNewTask> {
  @override
  Widget build(BuildContext context) {
    final _inputController = TextEditingController();
    return Column(
      children: [
        const Text("What task do you want to create?"),
        TextField(
          controller: _inputController,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(_inputController.text);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class _LogoutDialog extends StatelessWidget {
  const _LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("you really want to logout?"),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
          child: const Text("LOGOUT"),
        ),
      ],
    );
  }
}
