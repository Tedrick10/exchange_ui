// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import './slider_cell_widget.dart';

// SliderWidget: StatelessWidget Class
class SliderWidget extends StatelessWidget {
  // Constructor
  const SliderWidget({Key? key}) : super(key: key);

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          SliderCellWidget(title: "BTC", amount: "364,616.88"),
          SliderCellWidget(title: "ETH", amount: "299,215.56"),
          SliderCellWidget(title: "USDT", amount: "428,675.99"),
          SliderCellWidget(title: "BUSD", amount: "353,667.88"),
          SliderCellWidget(title: "XRP", amount: "453,672.89"),
        ],
      ),
    );
  }
}
