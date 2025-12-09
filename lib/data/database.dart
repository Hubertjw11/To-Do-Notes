import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase{

  List todoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData(){
    todoList = [
      ['Make Tutorial', false],
      ['Do Exercise', false],
    ];
    updateDatabase();
  }

  // loat the data from database
  void LoadData(){
    todoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase(){
    _myBox.put("TODOLIST", todoList);
  }
}