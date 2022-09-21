// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../widgets/background_widget.dart';

// ListingPage: StatelessWidget Class
class ListingPage extends StatelessWidget {
  // Constructor
  const ListingPage({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return const Scaffold(
      body: BackgroundWidget(
        isDashboard: false,
        body: Center(
          child: Text(
            "Hello, Listing!",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
