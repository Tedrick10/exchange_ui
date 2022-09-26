// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:intl/intl.dart';

// ListCellWidget: StatelessWidget Class
class ListCellWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String title;
  final double amount;
  final double percentage;
  final Color color;
  final void Function()? function;

  // Constructor
  ListCellWidget({
    required this.title,
    required this.amount,
    required this.percentage,
    required this.color,
    required this.function,
    Key? key,
  }) : super(key: key);

  // Final: Class Properties
  final NumberFormat numberFormat = NumberFormat.decimalPattern("en_us");

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: double.infinity,
      height: 100.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 5.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5.0,
                    height: 20.0,
                    color: color,
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 18.0),
                  Text(
                    "\$${numberFormat.format(amount)}",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$percentage%",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              IconButton(
                onPressed: function,
                padding: const EdgeInsets.all(5.0),
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 15.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
