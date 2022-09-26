// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// PorfoliosDetailsListCellWidget: StatelessWidget Class
class PorfoliosDetailsListCellWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String title;
  final String amount;
  final Color amountColor;
  final Color backgroundColor;

  // Constructor
  const PorfoliosDetailsListCellWidget({
    required this.title,
    required this.amount,
    required this.amountColor,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: double.infinity,
      height: 30.0,
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Container(
            width: 100.0,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
            child: Text(
              ":",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              color: amountColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
