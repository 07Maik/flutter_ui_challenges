import 'package:flutter_ui_challenges/src/pages/task_todolist/models/item_task_model.dart';

import 'collaborator_model.dart';

class TaskModel {
  final String id;
  final String name;
  final String category;
  final List<ItemTaskModel> items;
  final CollaboratorModel? collaborator;

  TaskModel({
    required this.id,
    required this.name,
    required this.items,
    required this.category,
    this.collaborator,
  });
}
