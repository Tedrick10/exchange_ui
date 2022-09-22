// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ChartDataModel: Model Class
class ChartDataModel {
  // Parameters: Class Properties
  final String title;
  final double amount;
  final double percentage;
  final Color color;

  // Constructor
  ChartDataModel({
    required this.title,
    required this.amount,
    required this.percentage,
    required this.color,
  });
}
