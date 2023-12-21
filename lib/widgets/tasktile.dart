import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/constants/colors.dart';

import '../models/todo.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key, required this.todo, this.onTodoChanged, this.onDeleteItem});

  final ToDo todo;
  final onTodoChanged;
  final onDeleteItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r), color: containerColor),
      height: 50.h,
      child: ListTile(
        leading: IconButton(
          onPressed: () {
            onTodoChanged(todo);
          },
          icon: Icon(
            todo.isDone ? Icons.check_circle : Icons.circle_outlined,
            size: 20.h,
            // color: doneColor,
            color: doneColor,
          ),
        ),
        title: Text(
          todo.todoText!,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        trailing: IconButton(
            onPressed: () {
              onDeleteItem(todo.id);
            },
            icon: Icon(
              Icons.delete,
              size: 20.h,
              color: deleteIconColor,
            )),
      ),
    );
  }
}
