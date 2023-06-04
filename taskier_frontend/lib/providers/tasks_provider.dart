import 'package:flutter/material.dart';
import 'package:taskier/models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  final List<TaskModel> _taskList = <TaskModel>[];
  List<TaskModel> get taskList => _taskList;
  // final Dio _dio = Dio();

  void getTasks() async {
    // var response = await _dio.get(Apis.tasks);
    // if (response.statusCode == 200 || response.statusCode == 201) {
    //   var json = jsonDecode(response.data);
    // }
    notifyListeners();
  }

  void addSingleTask(TaskModel task) async {
    _taskList.add(task);

    notifyListeners();
  }

  void addTasks(List<TaskModel> list) async {
    _taskList.addAll(list);
    notifyListeners();
  }

  void deleteTask(String id) {
    notifyListeners();
  }
}
