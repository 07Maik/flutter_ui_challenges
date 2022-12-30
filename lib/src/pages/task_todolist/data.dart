import 'package:flutter_ui_challenges/src/pages/task_todolist/models/collaborator_model.dart';

import 'models/item_task_model.dart';
import 'models/task_model.dart';

final task = [
  TaskModel(
    id: "1",
    category: "Shared Tasks",
    name: "Market shopping list",
    collaborator: CollaboratorModel(
        name: 'Silva',
        urlImage:
            "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068542/flutter_ui/pexels-pixabay-220453_ce1kx9.jpg"),
    items: [
      ItemTaskModel(id: "1", isCompleted: true, label: "Banana"),
      ItemTaskModel(id: "2", isCompleted: false, label: "Tomato"),
      ItemTaskModel(id: "3", isCompleted: true, label: "Brinjal"),
      ItemTaskModel(id: "4", isCompleted: false, label: "Milk"),
    ],
  ),
  TaskModel(
    id: "2",
    category: "Personal Tasks",
    name: "My Daily Tasks",
    items: [
      ItemTaskModel(id: "1", isCompleted: true, label: "Banana"),
      ItemTaskModel(id: "2", isCompleted: true, label: "Tomato"),
      ItemTaskModel(id: "3", isCompleted: true, label: "Brinjal"),
    ],
  ),
  TaskModel(
    id: "3",
    category: "Shared Tasks",
    name: "Project 2",
    items: [
      ItemTaskModel(id: "1", isCompleted: true, label: "Concept"),
      ItemTaskModel(id: "2", isCompleted: false, label: "Durability"),
      ItemTaskModel(id: "3", isCompleted: true, label: "Flger"),
    ],
  ),
];
