// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../../widgets/slider_widget.dart';
import '../../widgets/porfolios/porfolios_details_list_widget.dart';

// PorfoliosDetailsPage: StatelessWidget Class
class PorfoliosDetailsPage extends StatelessWidget {
  // Parameter: Class Properties
  final String title;

  // Constructor
  const PorfoliosDetailsPage({
    required this.title,
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 30.0),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total Market Value",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "SGD ",
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              TextSpan(
                                text: "\$364,616.88",
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today's Profit",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "\$5,371.76",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "(+1.47%)",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 5.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Profit",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "\$40,482.90",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "(+64.08%)",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              Container(
                width: double.infinity,
                height: 100.0,
                color: Colors.black12,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SliderWidget(),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      PorfoliosDetailsListWidget(title: "AAPL (Apple Inc)"),
                      PorfoliosDetailsListWidget(title: "AMZN (Amazon)"),
                      PorfoliosDetailsListWidget(
                        title: "ETF (Exchange Traded Fund)",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
