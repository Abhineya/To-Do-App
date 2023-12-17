import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/models/todo.dart';

import '../widgets/tasktile.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: darkbgColor,
          width: 220.w,
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Menu',
                style: Theme.of(context).textTheme.displayLarge,
              ),   SizedBox(
                height: 30.h,
              ),
              ListTile(),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    'Pending Tasks',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    'Pending Tasks',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    'Pending Tasks',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
            ],
          )),
      backgroundColor: Theme.of(context).primaryColor,

      appBar: AppBar(
        elevation: 0.0,
        title: Center(
          child: Text(
            'Monday, 28',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(20.r)),
                  height: 180.h,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Tasks',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                // TextTile(),
                // TextTile(),
                // TextTile(),
                // TextTile(),
                // TextTile(),
                Expanded(
                    child: ListView(
                  children: [
                    for (ToDo todoo in todosList) TaskTile(todo: todoo),
                  ],
                ))
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: SizedBox(
                  height: 40.h,
                  width: double.infinity.w,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r))),
                        backgroundColor:
                            const MaterialStatePropertyAll(buttonColor),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.add_box),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'ADD',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
      //   child: SizedBox(
      //     height: 40.h,
      //     child: ElevatedButton(
      //         style: ButtonStyle(
      //           shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r))) ,
      //           backgroundColor: MaterialStatePropertyAll(buttonColor),
      //         ),
      //         onPressed: () {},
      //         child: Text('')),
      //   ),
      // ),
    );
  }
}
