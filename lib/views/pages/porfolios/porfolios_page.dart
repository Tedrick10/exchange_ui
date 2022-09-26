// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../../widgets/background_widget.dart';
import '../../widgets/porfolios/porfolios_title_widget.dart';
import '../../widgets/porfolios/porfolios_chart_widget.dart';
import '../../widgets/porfolios/porfolios_list_widget.dart';

// PorfoliosPage: StatelessWidget Class
class PorfoliosPage extends StatelessWidget {
  // Constructor
  const PorfoliosPage({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      body: BackgroundWidget(
        isDashboard: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.0),
            PorfoliosTitleWidget(),
            SizedBox(height: 40.0),
            PorfoliosChartWidget(),
            SizedBox(height: 40.0),
            PorfoliosListWidget(parentsContext: context),
          ],
        ),
      ),
    );
  }
}
