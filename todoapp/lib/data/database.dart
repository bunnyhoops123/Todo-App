import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  //refernece our box
  final _myBox = Hive.box('myBox');

  //run if first time opening this app ever
  void createInitialData() {
    toDoList = [
      ['Make Tutorial', false],
      ['Do Exercise', false]
    ];
  }

  //load the data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateData() {
    _myBox.put('TODOLIST', toDoList);
  }
}
