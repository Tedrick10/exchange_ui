// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

// Controllers
import '../../../controllers/dashboard/cashflow_points_controller.dart';

// CashflowChartWidget: StatefulWidget Class
class CashflowChartWidget extends StatefulWidget {
  // Constructor
  const CashflowChartWidget({Key? key}) : super(key: key);

  @override
  State<CashflowChartWidget> createState() => _CashflowChartWidgetState();
}

class _CashflowChartWidgetState extends State<CashflowChartWidget> {
  // Final: Class Properties
  final CashflowPointsController cashflowPointsController =
      CashflowPointsController();

  final ValueNotifier<String> segmentController = ValueNotifier("day");

  final Map<String, String> segmentsList = {
    "day": "Day",
    "week": "Week",
    "month": "Month",
    "year": "Year",
  };

  // Changable: Class Properties
  int currentChartIndex = 0;

  // Widgets: Class Methods
  List<Widget> _chartOnlyWidget() {
    final List<Widget> chartWidgetList = [
      LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: cashflowPointsController.getCashflowList
                  .map((point) => FlSpot(point.x, point.y))
                  .toList(),
              barWidth: 1.0,
              color: Colors.orange,
              isCurved: true,
              preventCurveOverShooting: true,
            ),
          ],
        ),
        swapAnimationDuration: const Duration(milliseconds: 150),
        swapAnimationCurve: Curves.easeIn,
      ),
      LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: cashflowPointsController.getCashflowList
                  .map((point) => FlSpot(point.x, point.y))
                  .toList(),
              barWidth: 1.0,
              color: Colors.orange,
              isCurved: true,
              preventCurveOverShooting: true,
            ),
          ],
        ),
        swapAnimationDuration: const Duration(milliseconds: 150),
        swapAnimationCurve: Curves.easeIn,
      ),
      LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: cashflowPointsController.getCashflowList
                  .map((point) => FlSpot(point.x, point.y))
                  .toList(),
              barWidth: 1.0,
              color: Colors.orange,
              isCurved: true,
              preventCurveOverShooting: true,
            ),
          ],
        ),
        swapAnimationDuration: const Duration(milliseconds: 150),
        swapAnimationCurve: Curves.easeIn,
      ),
    ];

    return chartWidgetList;
  }

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Debugging
    print("----- Device Screen Width -----");
    print(MediaQuery.of(context).size.width);

    // Final: Method Properties
    final double screenWidth = MediaQuery.of(context).size.width;

    // Returning Widgets
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: AdvancedSegment(
              controller: segmentController,
              segments: segmentsList,
              itemPadding: EdgeInsets.symmetric(
                horizontal: (screenWidth > 390) ? 21.0 : 18.5,
                // horizontal: 10.0,
                vertical: 10.0,
              ),
              sliderColor: Colors.blue.shade100,
              backgroundColor: Colors.black12,
              activeStyle: TextStyle(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
              inactiveStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        SizedBox(
          width: double.infinity,
          height: 300.0,
          child: PageView(
            children: _chartOnlyWidget(),
            onPageChanged: (int changedIndex) {
              setState(() {
                currentChartIndex = changedIndex;
              });
            },
          ),
        ),
        const SizedBox(height: 10.0),
        CarouselIndicator(
          count: _chartOnlyWidget().length,
          index: currentChartIndex,
          activeColor: Colors.blue.shade900,
          color: Colors.grey,
        ),
      ],
    );
  }
}
