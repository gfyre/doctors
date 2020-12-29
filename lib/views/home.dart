import 'package:flutter/material.dart';

import '../model/speciality.dart';
import '../data/data.dart';
import '../widgets/specialists_tile.dart';
import '../widgets/doctors_tile.dart';

String selectedCategory = "Adults";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    "Adults",
    "Children",
    "Women",
    "Men",
  ];
  List<SpecialityModel> speciality;

  @override
  void initState() {
    super.initState();
    speciality = getSpeciality();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text(
              'Find Your \nConsultation',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.7),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Categories',
              style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoriesTile(
                    category: categories[index],
                    isSelected: selectedCategory == categories[index],
                    context: this,
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  itemCount: speciality.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SpecialistTile(
                      imgAssetPath: speciality[index].imgAssetPath,
                      speciality: speciality[index].speciality,
                      number: speciality[index].numberOfDoctors,
                      backgroundColor: speciality[index].backgroundColor,
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Doctors',
              style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            DoctorsTile(),
          ],
        ),
      ),
    );
  }
}

class CategoriesTile extends StatefulWidget {
  String category;
  bool isSelected;
  _HomePageState context;

  CategoriesTile({
    this.category,
    this.isSelected,
    this.context,
  });
  @override
  _CategoriesTileState createState() => _CategoriesTileState();
}

class _CategoriesTileState extends State<CategoriesTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.context.setState(() {
          selectedCategory = widget.category;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 8),
        height: 30,
        decoration: BoxDecoration(
          color: widget.isSelected ? Color(0xffFFD0AA) : Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          widget.category,
          style: TextStyle(
            color: widget.isSelected ? Color(0xffFc9535) : Color(0xffA1A1A1),
          ),
        ),
      ),
    );
  }
}
