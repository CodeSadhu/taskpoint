import 'package:flutter/material.dart';
import 'package:taskier/models/task_filter.dart';

class Constants {
  Constants._();

  static const String appFont = 'Poppins';
  static List<TaskFilter> taskStatus = [
    TaskFilter(taskStatus: 'My Tasks', selected: true),
    TaskFilter(taskStatus: 'In Progress', selected: false),
    TaskFilter(taskStatus: 'Completed', selected: false),
  ];
  static Size getSize(BuildContext context) => MediaQuery.of(context).size;
}
