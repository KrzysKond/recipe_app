import 'dart:io';
import 'package:hive/hive.dart';
part 'hiveClass.g.dart';





@HiveType(typeId: 0)
class hiveClass {
  hiveClass({ this.name, this.howToMake, this.ingredients, this.asset}){}
  @HiveField(0)
  String name;

  @HiveField(1)
  String howToMake;

  @HiveField(2)
  List ingredients;

  @HiveField(3)
  File asset;

}