import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_pheonix9/provider/MealTimeMealList.dart';
import 'package:project_pheonix9/provider/foodSearchResults.dart';
import 'package:provider/provider.dart';

class CalorieLogDatePicker extends StatefulWidget {
  @override
  _CalorieLogDatePickerState createState() => _CalorieLogDatePickerState();
}

class _CalorieLogDatePickerState extends State<CalorieLogDatePicker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    print(selectedDate);
    return GestureDetector(
      onTap: () async {
        final DateTime picked = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime(2000),
            lastDate: DateTime(2025));
        print(picked);
        if (picked != null && picked != selectedDate) {
          setState(() {
            selectedDate = picked;
          });
           String formattedSelectedDate = DateFormat('dd MMM yyyy').format(selectedDate);
           Provider.of<FoodSearchResults>(context, listen: false).changeDateLog(formattedSelectedDate);
           Provider.of<MealsData>(context, listen: false).changeDateLog(formattedSelectedDate);
        }
      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Text(
                DateFormat('dd MMMM yyyy').format(selectedDate),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
