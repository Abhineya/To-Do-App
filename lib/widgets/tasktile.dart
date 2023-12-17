import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/constants/colors.dart';

import '../models/todo.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.todo});

  final ToDo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r), color: containerColor),
      height: 50.h,
      child: ListTile(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            todo.isDone ? Icons.check_circle : Icons.circle_outlined,
            size: 20.h,
            // color: doneColor,
            color: undoneColor,
          ),
        ),
        title: Text(
          todo.todoText!,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              size: 20.h,
              color: deleteIconColor,
            )),
      ),
    );
  }
}
