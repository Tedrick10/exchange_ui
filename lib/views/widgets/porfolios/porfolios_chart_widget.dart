// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:d_chart/d_chart.dart';
import 'package:intl/intl.dart';

// Models
import '../../../models/porfolios/chart_data_model.dart';

// Controllers
import '../../../controllers/porfolios/porfolios_chart_controller.dart';

// Widgets
import './porfolios_chart_data_widget.dart';

// PorfoliosChartWidget: StatefulWidget Class
class PorfoliosChartWidget extends StatefulWidget {
  // Constructor
  const PorfoliosChartWidget({Key? key}) : super(key: key);

  // CreateState: Override Class Method
  @override
  State<PorfoliosChartWidget> createState() => _PorfoliosChartWidgetState();
}

// _PorfoliosChartWidgetState: Private State Class
class _PorfoliosChartWidgetState extends State<PorfoliosChartWidget> {
  // Final: Class Properties
  final PorfoliosChartController porfoliosChartController =
      PorfoliosChartController();
  final NumberFormat numberFormat = NumberFormat.decimalPattern("en_us");

  // Changable: Class Properties
  List<Map<String, dynamic>> porfoliosDataList = [];
  double totalAmount = 0;

  // Lifecycle: Override Class Methods
  @override
  void initState() {
    _initializePorfoliosData();
    super.initState();
  }

  // Actions: Class Methods
  void _initializePorfoliosData() {
    setState(() {
      for (ChartDataModel chartData
          in porfoliosChartController.getChartDataList) {
        totalAmount += chartData.amount;
      }
      porfoliosDataList = porfoliosChartController.getChartDataList
          .map((chartData) => {
                "domain": chartData.title.toString(),
                "measure": chartData.percentage,
                // "color": chartData.color,
              })
          .toList();
    });
  }

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: double.infinity,
      height: 200.0,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Text(
                "\$${numberFormat.format(totalAmount)}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
              Positioned(
                child: Container(
                  width: 180.0,
                  height: 180.0,
                  color: Colors.transparent,
                  child: DChartPie(
                    data: porfoliosDataList,
                    fillColor: (Map<String, dynamic> list, int? index) =>
                        porfoliosChartController.getChartDataList[index!].color,
                    donutWidth: 15,
                    labelPosition: PieLabelPosition.inside,
                    labelFontSize: 0,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: porfoliosChartController.getChartDataList
                .map((chartData) => PorfoliosChartDataWidget(data: chartData))
                .toList(),
          ),
        ],
      ),
    );
  }
}
