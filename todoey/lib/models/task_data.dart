import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Grocery Shopping'),
    Task(name: 'Jogging')
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTast(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}