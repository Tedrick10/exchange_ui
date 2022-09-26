// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ListingDetailsAskCellWidget: StatelessWidget Class
class ListingDetailsAskCellWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String askVolume;
  final double askPrice;

  // Constructor
  const ListingDetailsAskCellWidget({
    required this.askVolume,
    required this.askPrice,
    Key? key,
  }) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: double.infinity,
      height: 30.0,
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border(
          left: BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(askPrice.toString()),
          Text(askVolume.toString()),
        ],
      ),
    );
  }
}
