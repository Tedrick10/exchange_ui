// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// SliderCellWidget: StatelessWidget Class
class SliderCellWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String title;
  final String amount;
  // Constructor
  const SliderCellWidget({
    required this.title,
    required this.amount,
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: 120.0,
      height: 60.0,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            "\$$amount",
            style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
