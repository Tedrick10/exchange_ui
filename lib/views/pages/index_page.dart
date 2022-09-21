// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Pages
import './home_page.dart';

// IndexPage: StatelessWidget
class IndexPage extends StatelessWidget {
  // Constructor
  const IndexPage({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return MaterialApp(
      title: "Exchange UI",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
