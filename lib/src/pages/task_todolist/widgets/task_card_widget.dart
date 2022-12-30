import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/collaborator_model.dart';
import '../models/item_task_model.dart';
import '../provider/task.dart';
import 'button_task_card_widget.dart';
import 'item_task_card_widget.dart';

class TaskCard extends StatelessWidget {
  final String id;
  final String category;
  final String name;
  final List<ItemTaskModel> itemsTask;
  final CollaboratorModel? collaborator;

  const TaskCard({
    Key? key,
    required this.id,
    required this.category,
    required this.name,
    required this.itemsTask,
    this.collaborator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(category),
        Container(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          margin: const EdgeInsets.symmetric(vertical: 10),
          constraints: const BoxConstraints(minHeight: 100),
          decoration: cardDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              cardHeader(),
              ...itemsTask
                  .map((e) => ItemTask(
                        id: e.id,
                        idTask: id,
                        isCompleted: e.isCompleted,
                        label: e.label,
                      ))
                  .toList(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (collaborator != null)
                    collaborators()
                  else
                    const SizedBox(),
                  indicatorStatusTask(context)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  BoxDecoration cardDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[400]!,
              blurRadius: 4,
              spreadRadius: -3,
              offset: const Offset(0, 5))
        ]);
  }

  Widget cardHeader() {
    return Stack(
      children: [
        Row(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const Spacer(),
            const ButtonTaskCard(color: Color(0xff6874b7), icon: Icons.refresh),
            const ButtonTaskCard(color: Colors.amber, icon: Icons.share),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 40),
          width: 100,
          height: 0.5,
          color: Colors.grey,
        ),
      ],
    );
  }

  Container indicatorStatusTask(BuildContext context) {
    final bool isTaskCompleted = Provider.of<Task>(context).isCompletedTask(id);

    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: 85,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isTaskCompleted ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(25)),
      child: Text(
        isTaskCompleted ? "Completed" : "Incomplete",
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }

  Container collaborators() {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.only(left: 10, top: 10),
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey, width: 0.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(collaborator!.urlImage),
          ),
          const SizedBox(width: 5),
          Text(
            collaborator!.name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
