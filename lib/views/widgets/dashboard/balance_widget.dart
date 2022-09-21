// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// BalanceWidget: StatelessWidget Class
class BalanceWidget extends StatelessWidget {
  // Constructor
  const BalanceWidget({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
        const SizedBox(height: 30.0),
        const Text(
          "Today I have",
          style: TextStyle(color: Colors.white30),
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "SGD",
              style: TextStyle(color: Colors.white30),
            ),
            SizedBox(width: 5.0),
            Text(
              "\$503,463",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            Text(
              ".59",
              style: TextStyle(
                color: Colors.white30,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30.0),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "I have earned",
                      style: TextStyle(
                        color: Colors.white30,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "\$5,320.12",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const VerticalDivider(
                color: Colors.white30,
                width: 10,
              ),
              SizedBox(
                width: 120.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Percentage gained",
                      style: TextStyle(
                        color: Colors.white30,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "4.3%",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
