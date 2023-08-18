import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String? newTaskTitle;

    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Add Task',textAlign:TextAlign.center,style: TextStyle(fontSize: 30.0,color: Colors.lightBlueAccent),),
            TextField(autofocus: true,textAlign: TextAlign.center,onChanged: (newValue){
              newTaskTitle=newValue;
            },),
            const SizedBox(height: 20.0,),
            MaterialButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: const Text('Add',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
