// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../widgets/background_widget.dart';

// PorfoliosPage: StatelessWidget Class
class PorfoliosPage extends StatelessWidget {
  // Constructor
  const PorfoliosPage({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return const Scaffold(
      body: BackgroundWidget(
        isDashboard: false,
        body: Center(
          child: Text(
            "Hello, Porfolios!",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
