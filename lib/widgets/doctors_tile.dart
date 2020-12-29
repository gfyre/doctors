import 'package:flutter/material.dart';

class DoctorsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFEEE0),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 18,
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/doctor_pic.png",
            height: 50,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dr Stephani Albert",
                style: TextStyle(
                  color: Color(0xffFC9535),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 4),
              Text("Cough and Cold"),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
                color: Color(0xffFBB97C),
                borderRadius: BorderRadius.circular(14)),
            child: Text(
              "Call",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
