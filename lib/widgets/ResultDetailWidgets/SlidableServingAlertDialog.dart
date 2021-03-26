import 'package:flutter/material.dart';

import '../../constant.dart';

class SlidableServingAlertDialog extends StatefulWidget {
  SlidableServingAlertDialog({this.servingValue});
  double servingValue;
  @override
  _SlidableServingAlertDialogState createState() =>
      _SlidableServingAlertDialogState();
}

class _SlidableServingAlertDialogState
    extends State<SlidableServingAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Servings: ' + widget.servingValue.toString(),
                  style: TextStyle(fontSize: 18),
                ),
                Slider(
                  inactiveColor: Color(blue),
                  activeColor: Color(darkBlue),
                  label: widget.servingValue.toString(),
                  min: 0,
                  max: 10,
                  divisions: 20,
                  onChanged: (double selectedServingvalue) {
                    setState(() {
                      widget.servingValue = selectedServingvalue;
                    });
                  },
                  value: widget.servingValue,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Confirm?' ,style: TextStyle(fontSize: 16),),
                SizedBox(width: 20,),
                RaisedButton(
                  color: Color(blue),
                  onPressed: () async {
                    Navigator.of(context).pop(widget.servingValue);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: Text(
                      'Yes',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
