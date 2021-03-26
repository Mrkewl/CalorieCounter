// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MealsClass.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealsAdapter extends TypeAdapter<Meals> {
  @override
  final int typeId = 2;

  @override
  Meals read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Meals(
      mealName: fields[1] as String,
      calories: fields[3] as int,
      protein: fields[4] as int,
      fat: fields[5] as int,
      carbs: fields[6] as int,
      breakfast: fields[7] as bool,
      lunch: fields[8] as bool,
      dinner: fields[9] as bool,
      categories: fields[2] as String,
      id: fields[0] as String,
      dateAdded: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Meals obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.mealName)
      ..writeByte(2)
      ..write(obj.categories)
      ..writeByte(3)
      ..write(obj.calories)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.fat)
      ..writeByte(6)
      ..write(obj.carbs)
      ..writeByte(7)
      ..write(obj.breakfast)
      ..writeByte(8)
      ..write(obj.lunch)
      ..writeByte(9)
      ..write(obj.dinner)
      ..writeByte(10)
      ..write(obj.dateAdded);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
