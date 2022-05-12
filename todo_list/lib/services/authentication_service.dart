import 'package:hive/hive.dart';
import 'package:todo_list/model/user.dart';

class AuthenticationService {

  late Box<User> _users;

  Future<void> init() async {
    Hive.registerAdapter(UserAdapter());
    _users = await Hive.openBox<User>('userBox');

    await _users.clear();

    await _users.add(User(username: 'testuser1', password: 'password'));
    await _users.add(User(username: 'mysend', password: 'password'));
  }

  Future<String>? authenticateUser(final String username, final String password) {
    final success = _users.values.any((element) => element.username == username && element.password == password);

    if (success) {
      return Future.value(username);
    } else {
      return null;
    }

  }

  Future<UserCreationResult> createUser(final String username, final String password) async {
    final alreadyExists = _users.values.any((element) => element.username.toLowerCase() == username.toLowerCase());

    if (alreadyExists) {
      return Future.value(UserCreationResult.already_exists);
    }
    try {
      await _users.add(User(username: username, password: password));
      return Future.value(UserCreationResult.success);
    } catch(e) {
      return Future.value(UserCreationResult.failure);
    }


  }
}

enum UserCreationResult {
  success,
  failure,
  already_exists,
}