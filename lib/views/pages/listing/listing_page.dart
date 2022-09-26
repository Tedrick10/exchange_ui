// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Widgets
import '../../widgets/background_widget.dart';
import '../../widgets/balance_widget.dart';
import '../../widgets/list_cell_widget.dart';
import './listing_details_page.dart';

// Controllers
import '../../../controllers/listing/crypto_data_controller.dart';

// ListingPage: StatelessWidget Class
class ListingPage extends StatelessWidget {
  // Constructor
  ListingPage({Key? key}) : super(key: key);

  // Final: Class Properties
  final CryptoDataController cryptoDataController = CryptoDataController();

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      body: BackgroundWidget(
        isDashboard: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BalanceWidget(),
            const SizedBox(height: 60.0),
            SingleChildScrollView(
              child: Column(
                children: cryptoDataController.getCryptoDataList
                    .map(
                      (data) => ListCellWidget(
                        title: "${data.data1}/${data.data2}",
                        amount: data.amount,
                        percentage: data.percentage,
                        color: Colors.blue.shade900,
                        function: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ListingDetailsPage(
                                title: "${data.data1}/${data.data2}",
                              ),
                            ),
                          );
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
