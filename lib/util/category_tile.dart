import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String categoryName;
  final String categoryIcon;

  const CategoryTile({
    Key? key,
    required this.categoryName,
    required this.categoryIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black), // Black border
          borderRadius: BorderRadius.circular(20.0), // Optional: Add border radius for a rounded look
        ),
        child: Row(
          children: [
            Container(
              width: 50.0,
              height: 40.0,
              decoration: BoxDecoration(
                  
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(categoryIcon),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Text(
              categoryName,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
