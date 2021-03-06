import 'package:fish_redux/fish_redux.dart';
import 'package:uuid/uuid.dart';

class ToDoState implements Cloneable<ToDoState> {
  String uniqueId;
  String title;
  String desc;
  bool isDone;

  ToDoState({this.uniqueId, this.title, this.desc, this.isDone = false}) {
    uniqueId ??= Uuid().v4();
  }

  @override
  ToDoState clone() {
    return ToDoState()
      ..uniqueId = uniqueId
      ..title = title
      ..desc = desc
      ..isDone = isDone;
  }

  @override
  String toString() {
    return 'ToDoState{uniqueId: $uniqueId, title: $title, desc: $desc, isDone: $isDone}';
  }

  Map<String, dynamic> toJson() {
    var map = {
      'uniqueId': uniqueId,
      'title':title,
      'desc':desc,
      'isDone':isDone,
    };
    return map;
  }
}
