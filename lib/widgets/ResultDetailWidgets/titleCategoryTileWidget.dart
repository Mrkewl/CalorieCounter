import 'package:flutter/material.dart';

import '../../constant.dart';

class Title_CategoryTile extends StatelessWidget {
  const Title_CategoryTile({
    this.title,this.category
  });

final String title;
final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 80,maxHeight: 100),
      //TODO This container is the name
      margin: EdgeInsets.only(bottom: 10, right: 10, left: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 6,
              spreadRadius: 3,
              offset: Offset(0, 3)),
        ],
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 10, bottom: 14, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(black).withOpacity(0.9),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.add_box_rounded,
                      size: 30,
                      color: Color(black).withOpacity(0.62),
                    ),
                    onPressed: null)
              ],
            ),
            Expanded(
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(black).withOpacity(0.62),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}