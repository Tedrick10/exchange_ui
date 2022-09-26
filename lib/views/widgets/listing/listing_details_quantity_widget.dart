// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ListingDetailsQuantityWidget: StatefulWidget Class
class ListingDetailsQuantityWidget extends StatefulWidget {
  // Constructor
  const ListingDetailsQuantityWidget({Key? key}) : super(key: key);

  // CreateState: Override Class Method
  @override
  State<ListingDetailsQuantityWidget> createState() =>
      _ListingDetailsQuantityWidgetState();
}

// _ListingDetailsQuantityWidgetState: Private State Class
class _ListingDetailsQuantityWidgetState
    extends State<ListingDetailsQuantityWidget> {
  // Changable: Class Properties
  int quantity = 500;

  // Action: Class Method
  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "Quantity",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: _increaseQuantity,
            child: Container(
              width: 60.0,
              height: double.infinity,
              color: Colors.black12,
              child: Icon(
                Icons.add,
                color: Colors.blue.shade900,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              quantity.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          InkWell(
            onTap: _decreaseQuantity,
            child: Container(
              width: 60.0,
              height: double.infinity,
              color: Colors.black12,
              child: Icon(
                Icons.remove,
                color: Colors.blue.shade900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
