import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  final String taskname;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  ToDoList(
      {required this.taskname,
      required this.taskCompleted,
      required this.onChanged,
      super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Checkbox(
              value: widget.taskCompleted,
              onChanged: widget.onChanged,
              activeColor: Colors.black,
            ),
            Text(
              widget.taskname,
              style: TextStyle(
                  decoration: (widget.taskCompleted)
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
