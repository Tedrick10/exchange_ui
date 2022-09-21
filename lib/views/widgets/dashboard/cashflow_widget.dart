// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import './cashflow_title_widget.dart';
import './cashflow_chart_widget.dart';

// CashflowWidget: StatelessWidget Class
class CashflowWidget extends StatelessWidget {
  // Constructor
  const CashflowWidget({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        CashflowTitleWidget(),
        SizedBox(height: 30.0),
        CashflowChartWidget(),
      ],
    );
  }
}
