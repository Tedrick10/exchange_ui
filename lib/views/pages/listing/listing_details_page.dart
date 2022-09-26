// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:intl/intl.dart';

// Widgets
import '../../widgets/listing/listing_details_title_cell_widget.dart';
import '../../widgets/listing/listing_details_bid_cell_widget.dart';
import '../../widgets/listing/listing_details_ask_cell_widget.dart';
import '../../widgets/listing/listing_details_quantity_widget.dart';
import '../../widgets/listing/listing_details_dropdown_widget.dart';

// Controllers
import '../../../controllers/listing/market_data_controller.dart';

// ListingDetailsPage: StatefulWidgetWidget Class
class ListingDetailsPage extends StatefulWidget {
  // Parameter: Class Properties
  final String title;

  // Constructor
  const ListingDetailsPage({
    required this.title,
    Key? key,
  }) : super(key: key);

  // CreateState: Override Class Method
  @override
  State<ListingDetailsPage> createState() => _ListingDetailsPageState();
}

// _ListingDetailsPageState: Private State Class
class _ListingDetailsPageState extends State<ListingDetailsPage> {
  // Changable: Class Properties
  bool isBuy = false;

  // Final: Class Properties
  final MarketDataController marketDataController = MarketDataController();
  final NumberFormat numberFormat = NumberFormat.decimalPattern("en_us");

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
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
                      widget.title,
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
              Container(
                width: double.infinity,
                height: 100.0,
                color: Colors.black12,
                child: Container(
                  width: double.infinity,
                  height: 30.0,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isBuy = !isBuy;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            color:
                                (isBuy) ? Colors.blue.shade900 : Colors.white,
                            alignment: Alignment.center,
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                color: (isBuy) ? Colors.white : Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isBuy = !isBuy;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            color:
                                (!isBuy) ? Colors.blue.shade900 : Colors.white,
                            alignment: Alignment.center,
                            child: Text(
                              "Sell",
                              style: TextStyle(
                                color: (!isBuy) ? Colors.white : Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  top: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                  right: BorderSide(
                                    width: 0.5,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BID",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "4.374",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30.0,
                                          ),
                                        ),
                                        Text(
                                          "EUR",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  top: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                  left: BorderSide(
                                    width: 0.5,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "SELL",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "4.375",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30.0,
                                          ),
                                        ),
                                        Text(
                                          "EUR",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      child: Container(
                        width: 60.0,
                        height: 25.0,
                        color: Colors.blue.shade900,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.electric_bolt,
                              color: Colors.white,
                              size: 15.0,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              "Live",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ListingDetailsTitleCellWidget(
                            title1: "VOLUME",
                            title2: "SELL",
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: ListingDetailsTitleCellWidget(
                            title1: "BUY",
                            title2: "VOLUME",
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 150.0,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0;
                                i <
                                    marketDataController
                                        .getAskMarketDataList.length;
                                i++) ...[
                              Container(
                                width: double.infinity,
                                height: 30.0,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: ListingDetailsBidCellWidget(
                                        bidVolume: numberFormat.format(
                                          marketDataController
                                              .getBidMarketDataList[i].volume,
                                        ),
                                        bidPrice: marketDataController
                                            .getBidMarketDataList[i].price,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: ListingDetailsAskCellWidget(
                                        askVolume: numberFormat.format(
                                          marketDataController
                                              .getAskMarketDataList[i].volume,
                                        ),
                                        askPrice: marketDataController
                                            .getAskMarketDataList[i].price,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListingDetailsQuantityWidget(),
              ListingDetailsDropdownWidget(),
              Container(
                width: double.infinity,
                height: 60.0,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          margin: const EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            "CANCEL",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          margin: const EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            "PLACE ORDER",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
