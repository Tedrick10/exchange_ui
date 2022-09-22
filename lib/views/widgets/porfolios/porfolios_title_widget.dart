// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// PorfoliosTitleWidget: StatelessWidget Class
class PorfoliosTitleWidget extends StatelessWidget {
  // Constructor
  const PorfoliosTitleWidget({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Porfolios",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Tony Stark's Account",
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
