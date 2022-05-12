import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/home/bloc/home_bloc.dart';
import 'package:todo_list/services/authentication_service.dart';
import 'package:todo_list/services/todo_service.dart';
import 'package:todo_list/todos/todos.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final usernameField = TextEditingController();
  final passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to Todo App'),
      ),
      body: BlocProvider(
        create: (context) => HomeBloc(
          RepositoryProvider.of<AuthenticationService>(context),
          RepositoryProvider.of<TodoService>(context),
        )..add(
            RegisterServiceEvent(),
          ),
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is SuccessfulLoginState) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TodosPage(username: state.username),
                ),
              );
            } else if (state is HomeInitial) {
              if (state.error != null) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Error'),
                    content: Text(state.error!),
                  ),
                );
              }
            }
          },
          builder: (context, state) {
            if (state is HomeInitial) {
              return Column(
                children: [
                  TextField(
                    controller: usernameField,
                    decoration: const InputDecoration(labelText: 'Username'),
                  ),
                  TextField(
                    obscureText: true,
                    controller: passwordField,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () =>
                              BlocProvider.of<HomeBloc>(context).add(
                            LoginEvent(
                              username: usernameField.text,
                              password: passwordField.text,
                            ),
                          ),
                          child: const Text('LOGIN'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () =>
                              BlocProvider.of<HomeBloc>(context).add(
                            RegisterAccountEvent(
                              username: usernameField.text,
                              password: passwordField.text,
                            ),
                          ),
                          child: const Text('REGISTER'),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
