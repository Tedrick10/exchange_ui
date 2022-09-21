// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// BackgroundWidget: StatelessWidget Class
class BackgroundWidget extends StatelessWidget {
  // Parameters: Class Properties
  final Widget body;
  final bool isDashboard;

  // Constructor
  const BackgroundWidget({
    required this.body,
    required this.isDashboard,
    Key? key,
  }) : super(key: key);

  // Widgets: Class Methods
  Widget _backgroundWidget() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500.0,
          decoration: BoxDecoration(
            color: Colors.black12,
            border: Border.all(color: Colors.white10),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        Positioned(
          child: (isDashboard)
              ? Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250.0,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        border: Border.all(color: Colors.white10),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100.0),
                    Container(
                      width: double.infinity,
                      height: 500.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white10),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  width: double.infinity,
                  height: 250.0,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    border: Border.all(color: Colors.white10),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 5.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  _backgroundWidget(),
                  Positioned(
                    left: 10,
                    right: 10,
                    child: body,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
