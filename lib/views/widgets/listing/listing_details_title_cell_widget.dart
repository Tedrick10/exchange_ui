// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ListingDetailsTitleCellWidget: StatelessWidget Class
class ListingDetailsTitleCellWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String title1;
  final String title2;

  // Constructor
  const ListingDetailsTitleCellWidget({
    required this.title1,
    required this.title2,
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: double.infinity,
      height: 30.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title1.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text(
            title2.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
