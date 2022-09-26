// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ListingDetailsDropdownWidget: StatefulWidget Class
class ListingDetailsDropdownWidget extends StatefulWidget {
  // Constructor
  const ListingDetailsDropdownWidget({Key? key}) : super(key: key);

  // CreateState: Override Class Method
  @override
  State<ListingDetailsDropdownWidget> createState() =>
      _ListingDetailsDropdownWidgetState();
}

// _ListingDetailsDropdownWidgetState: Private State Class
class _ListingDetailsDropdownWidgetState
    extends State<ListingDetailsDropdownWidget> {
  // Action: Class Methods
  void _dropdown() {}

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            "Terms",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "Market",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          InkWell(
            onTap: _dropdown,
            child: Container(
              width: 60.0,
              height: double.infinity,
              color: Colors.black12,
              child: Icon(
                Icons.expand_more,
                color: Colors.blue.shade900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
