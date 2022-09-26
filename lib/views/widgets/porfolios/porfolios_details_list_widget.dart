// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import './porfolios_details_list_cell_widget.dart';

// PorfoliosDetailsListWidget: StatefulWidget Class
class PorfoliosDetailsListWidget extends StatefulWidget {
  // Parameter: Class Properties
  final String title;

  // Constructor
  const PorfoliosDetailsListWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  // CreateState: Overrice Class Method
  @override
  State<PorfoliosDetailsListWidget> createState() =>
      _PorfoliosDetailsListWidgetState();
}

// _PorfoliosDetailsListWidgetState: Private State Class
class _PorfoliosDetailsListWidgetState
    extends State<PorfoliosDetailsListWidget> {
  // Changable: Class Properties
  bool isInterest = false;

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: (widget.title.length > 15) ? 12 : 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "\$3,463.59",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isInterest = !isInterest;
                    });
                  },
                  child: Container(
                    width: 120.0,
                    height: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:
                          (isInterest) ? Colors.black12 : Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: (isInterest)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 18.0,
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                "Interest Sent",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          )
                        : Text(
                            "Show Interest",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          PorfoliosDetailsListCellWidget(
            title: "Shares",
            amount: "3,330.08",
            amountColor: Colors.blue.shade900,
            backgroundColor: Colors.black12,
          ),
          PorfoliosDetailsListCellWidget(
            title: "Unit Cost",
            amount: "90.52",
            amountColor: Colors.blue.shade900,
            backgroundColor: Colors.white,
          ),
          PorfoliosDetailsListCellWidget(
            title: "Total Cost",
            amount: "2,000.39",
            amountColor: Colors.blue.shade900,
            backgroundColor: Colors.black12,
          ),
          PorfoliosDetailsListCellWidget(
            title: "Current Price",
            amount: "\$40.90",
            amountColor: Colors.blue.shade900,
            backgroundColor: Colors.white,
          ),
          PorfoliosDetailsListCellWidget(
            title: "Price Change",
            amount: "0.68",
            amountColor: Colors.blue.shade900,
            backgroundColor: Colors.black12,
          ),
          PorfoliosDetailsListCellWidget(
            title: "Today's Profit",
            amount: "865.59",
            amountColor: Colors.green,
            backgroundColor: Colors.white,
          ),
          PorfoliosDetailsListCellWidget(
            title: "Total Profit",
            amount: "2,881.03",
            amountColor: Colors.green,
            backgroundColor: Colors.black12,
          ),
          Container(
            width: double.infinity,
            height: 30.0,
            color: Colors.white,
          ),
          Container(
            width: double.infinity,
            height: 30.0,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
