// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// CashflowTitleWidget: StatelessWidget Class
class CashflowTitleWidget extends StatelessWidget {
  // Constructor
  const CashflowTitleWidget({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
            size: 15.0,
          ),
        ),
        Column(
          children: [
            Text(
              "Cashflow Asset",
              style: TextStyle(
                color: Colors.blue.shade900,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 7.5),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "On 1 April, 2019, I had ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "\$5,000",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 15.0,
          ),
        ),
      ],
    );
  }
}
