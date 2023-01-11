import 'package:flutter/foundation.dart';

import '../models/task_model.dart';

class Task extends ChangeNotifier {
  final List<TaskModel> _task;

  Task() : _task = TaskModel.getList();

  List<TaskModel> getTasks() => _task;

  void updateItemTask(String idTask, String idItem) {
    _task
        .firstWhere((element) => element.id == idTask)
        .items
        .firstWhere((element) => element.id == idItem)
        .isCompleted = true;

    notifyListeners();
  }

  bool isCompletedTask(String idTask) {
    final task = _task.firstWhere((element) => element.id == idTask);

    final int itemsCompleted =
        task.items.where((element) => element.isCompleted).length;

    return task.items.length == itemsCompleted;
  }
}
