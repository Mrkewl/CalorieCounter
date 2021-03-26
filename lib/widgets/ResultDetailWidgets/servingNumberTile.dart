
import 'package:flutter/material.dart';

class ServingNumberTile extends StatelessWidget {
  const ServingNumberTile({
    this.servingNumber
  });
final double servingNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 6,
              spreadRadius: 3,
              offset: Offset(0, 3)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Servings:',
              style: TextStyle(fontSize: 18),
            ),
            Text(servingNumber.toString(), style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

