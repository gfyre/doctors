import 'package:flutter/material.dart';

class SpecialistTile extends StatelessWidget {
  String imgAssetPath;
  String speciality;
  int number;
  Color backgroundColor;

  SpecialistTile({
    @required this.imgAssetPath,
    @required this.speciality,
    @required this.number,
    @required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.only(
          top: 16,
          right: 16,
          left: 16,
        ),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              speciality,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 6),
            Text(
              "$number Doctors",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Image.asset(
              imgAssetPath,
              height: 163, //originally 160
              fit: BoxFit.fitHeight,
            ),
          ],
        ));
  }
}
