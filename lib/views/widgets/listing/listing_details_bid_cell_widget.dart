// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ListingDetailsBidCellWidget: StatelessWidget Class
class ListingDetailsBidCellWidget extends StatelessWidget {
  // Parameter: Class Properties
  final String bidVolume;
  final double bidPrice;

  // Constructor
  const ListingDetailsBidCellWidget({
    required this.bidVolume,
    required this.bidPrice,
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
          right: BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(bidVolume.toString()),
          Text(bidPrice.toString()),
        ],
      ),
    );
  }
}
