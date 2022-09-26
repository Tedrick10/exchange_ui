// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:intl/intl.dart';

// Controllers
import '../../../controllers/porfolios/porfolios_chart_controller.dart';

// Pages
import '../../pages/porfolios_details_page.dart';

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
              (chartData) => Container(
                width: double.infinity,
                height: 100.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 5.0,
                              height: 20.0,
                              color: chartData.color,
                            ),
                            const SizedBox(width: 10.0),
                            Text(
                              chartData.title,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 18.0),
                            Text(
                              "\$${numberFormat.format(chartData.amount)}",
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${chartData.percentage}%",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PorfoliosDetailsPage(
                                  title: chartData.title,
                                ),
                              ),
                            );
                          },
                          padding: const EdgeInsets.all(5.0),
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
