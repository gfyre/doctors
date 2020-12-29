import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<String> categories = [
    "Adults",
    "Children",
    "Women",
    "Men",
  ];
  String selectedCategory = "Adults";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 24),
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
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesTile extends StatefulWidget {
  String category;
  bool isSelected;

  CategoriesTile({
    this.category,
    this.isSelected,
  });

  @override
  _CategoriesTileState createState() => _CategoriesTileState();
}

class _CategoriesTileState extends State<CategoriesTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // selectedCategory = widget.category;
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
