// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:intl/intl.dart';

// Controllers
import '../../../controllers/porfolios/porfolios_chart_controller.dart';

// Pages
import '../../pages/porfolios/porfolios_details_page.dart';

// Widgets
import '../list_cell_widget.dart';

// PorfoliosListWidget: StatefulWidget Class
class PorfoliosListWidget extends StatefulWidget {
  // Parameter: Class Properties
  final BuildContext parentsContext;

  // Constructor
  const PorfoliosListWidget({
    required this.parentsContext,
    Key? key,
  }) : super(key: key);

  // CreateState: Override Class Method
  @override
  State<PorfoliosListWidget> createState() => _PorfoliosListWidgetState();
}

// _PorfoliosListWidgetState: Private State Class
class _PorfoliosListWidgetState extends State<PorfoliosListWidget> {
  // Final: Class Properties
  final PorfoliosChartController porfoliosChartController =
      PorfoliosChartController();
  final NumberFormat numberFormat = NumberFormat.decimalPattern("en_us");

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: porfoliosChartController.getChartDataList
            .map(
              (chartData) => ListCellWidget(
                title: chartData.title,
                amount: chartData.amount,
                percentage: chartData.percentage,
                color: chartData.color,
                function: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PorfoliosDetailsPage(
                        title: chartData.title,
                      ),
                    ),
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
