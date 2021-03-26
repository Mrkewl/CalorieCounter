import 'package:flutter/material.dart';


class ServingSizeTile extends StatelessWidget {
  const ServingSizeTile({
    this.servingSize
  }); 
  final double servingSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
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
              'Serving Size:',
              style: TextStyle(fontSize: 18),
            ),
            Text(servingSize.toStringAsFixed(1) + " Plate", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

