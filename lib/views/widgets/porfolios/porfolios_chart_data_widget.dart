// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Models
import '../../../models/porfolios/chart_data_model.dart';

// PorfoliosChartDataWidget: StatelessWidget Class
class PorfoliosChartDataWidget extends StatelessWidget {
  // Parameters: Class Properties
  final ChartDataModel data;

  // Constructor
  const PorfoliosChartDataWidget({
    required this.data,
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Container(
            width: 10.0,
            height: 10.0,
            color: data.color,
          ),
          const SizedBox(width: 5.0),
          Text(
            "${data.title} (${data.percentage}%)",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
