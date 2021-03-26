import 'package:flutter/material.dart';

import 'package:hive/hive.dart';

part 'MealsClass.g.dart';

@HiveType(typeId: 2)
class Meals extends HiveObject{
  @HiveField(0)
  String id;
  @HiveField(1)
  String mealName;
  @HiveField(2)
  String categories;
  @HiveField(3)
  int calories;
  @HiveField(4)
  int protein;
  @HiveField(5)
  int fat;
  @HiveField(6)
  int carbs;
  @HiveField(7)
  bool breakfast;
  @HiveField(8)
  bool lunch;
  @HiveField(9)
  bool dinner;
  @HiveField(10)
  String dateAdded;
  Meals({
    @required this.mealName,
    @required this.calories,
    @required this.protein,
    @required this.fat,
    @required this.carbs,
    @required this.breakfast,
    @required this.lunch,
    @required this.dinner,
    @required this.categories,
    @required this.id,
    @required this.dateAdded,
  });
}
