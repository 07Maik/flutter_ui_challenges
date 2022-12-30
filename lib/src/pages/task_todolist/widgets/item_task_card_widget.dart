import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/task.dart';

class ItemTask extends StatelessWidget {
  final String id;
  final String idTask;
  final String label;
  final bool isCompleted;

  const ItemTask({
    Key? key,
    required this.id,
    required this.idTask,
    required this.label,
    required this.isCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Task>(context);

    final mainColor =
        isCompleted ? Colors.grey : const Color(0xff6874b7).withOpacity(0.5);

    return SizedBox(
      height: 25,
      child: CheckboxListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        checkboxShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        activeColor: const Color(0xff6874b7).withOpacity(0.5),
        value: isCompleted,
        visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
        onChanged: ((value) {
          provider.updateItemTask(idTask, id);
        }),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          label,
          style: TextStyle(
              fontSize: 12,
              decoration: isCompleted ? TextDecoration.lineThrough : null,
              color: mainColor),
        ),
      ),
    );
  }
}
