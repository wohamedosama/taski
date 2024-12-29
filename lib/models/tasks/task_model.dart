import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 1)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final String time;
  @HiveField(4)
  bool? isCompleted;
  @HiveField(5)
  final bool? isToday;
  @HiveField(6)
  final int? id;

  TaskModel({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    this.isCompleted = false,
    this.isToday = false,
    this.id,
  });
  TaskModel decrementAtDataBase() {
    return TaskModel(
      title: title,
      description: description,
      date: date,
      time: time,
      id: id! - 1,
    );
  }
}
