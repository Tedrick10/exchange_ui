// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../widgets/background_widget.dart';
import '../widgets/dashboard/balance_widget.dart';
import '../widgets/slider_widget.dart';
import '../widgets/dashboard/cashflow_widget.dart';

// DashboardPage: StatelessWidget Class
class DashboardPage extends StatelessWidget {
  // Constructor
  const DashboardPage({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      body: BackgroundWidget(
        isDashboard: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            BalanceWidget(),
            SizedBox(height: 60.0),
            SliderWidget(),
            SizedBox(height: 40.0),
            CashflowWidget(),
          ],
        ),
      ),
    );
  }
}
