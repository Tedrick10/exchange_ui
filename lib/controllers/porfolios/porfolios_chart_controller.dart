// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Models
import '../../models/porfolios/chart_data_model.dart';

// PorfoliosChartController: Controller Class
class PorfoliosChartController {
  // Final & Private: Class Properties
  final List<ChartDataModel> _chartDataList = [
    ChartDataModel(
      title: "Equities",
      amount: 401392.49,
      percentage: 70.70,
      color: Colors.green.shade300,
    ),
    ChartDataModel(
      title: "Fixed Deposit",
      amount: 77071.10,
      percentage: 15.80,
      color: Colors.purple.shade300,
    ),
    ChartDataModel(
      title: "Fixed Income",
      amount: 20500.00,
      percentage: 4.5,
      color: Colors.pink.shade300,
    ),
  ];

  // Getters: Class Methods
  List<ChartDataModel> get getChartDataList => _chartDataList;
}
