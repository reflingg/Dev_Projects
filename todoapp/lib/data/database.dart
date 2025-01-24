import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st ever opening this app
  void createInitialData() {
    toDoList = [
      ['Make BreakFast', false],
      ["Do Exercise", false],
    ];
  }

  // laod the data fro the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // updata the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
