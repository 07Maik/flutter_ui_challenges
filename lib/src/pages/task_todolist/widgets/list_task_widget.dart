import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/task_model.dart';
import '../provider/task.dart';
import 'task_card_widget.dart';

class ListTask extends StatelessWidget {
  const ListTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TaskModel> tasks = Provider.of<Task>(context).getTasks();

    return ListView.builder(
      itemCount: tasks.length,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 32),
      itemBuilder: (BuildContext context, int index) {
        final task = tasks[index];

        return TaskCard(
          id: task.id,
          category: task.category,
          name: task.name,
          itemsTask: task.items,
          collaborator: task.collaborator,
        );
      },
    );
  }
}
