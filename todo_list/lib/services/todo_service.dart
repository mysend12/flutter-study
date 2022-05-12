import 'package:hive/hive.dart';
import 'package:todo_list/model/task.dart';

class TodoService {

  late Box<Task> _tasks;

  Future<void> init() async {
    Hive.registerAdapter(TaskAdapter());
    _tasks = await Hive.openBox<Task>('tasks');

    await _tasks.clear();

    await _tasks.add(Task(user: "testuser1", task: 'study', completed: true));
    await _tasks.add(Task(user: "mysend", task: 'study!!', completed: false));
  }

  Future<List<Task>> getTasks(final String username) {
    final tasks = _tasks.values.where((element) => element.user == username);
    return Future.value(tasks.toList());
  }

  void addTask(final String task, final String username) {
    _tasks.add(Task(user: username, task: task, completed: false));
  }

  Future<void> removeTask(final String task, final String username) async {
    final taskToRemove = _tasks.values.firstWhere((element) => element.task == task && element.user == username);
    await taskToRemove.delete();
  }

  Future<void> updateTask(final String task, final String username) async {
    final taskToEdit = _tasks.values.firstWhere((element) => element.task == task && element.user == username);
    final index = taskToEdit.key as int;
    await _tasks.put(index, Task(user: username, task: task, completed: !taskToEdit.completed));
  }

}