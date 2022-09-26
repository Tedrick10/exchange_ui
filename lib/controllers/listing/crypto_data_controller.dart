// Models
import '../../models/listing/crypto_data_model.dart';

// CryptoDataController
class CryptoDataController {
  // Final: Class Properties
  final List<CryptoDataModel> _cryptoDataList = [
    CryptoDataModel(
      data1: "BTC",
      data2: "BUSD",
      amount: 19000,
      percentage: -2.44,
    ),
    CryptoDataModel(
      data1: "ETH",
      data2: "BUSD",
      amount: 1500,
      percentage: -34.44,
    ),
    CryptoDataModel(
      data1: "XRP",
      data2: "BUSD",
      amount: 344,
      percentage: -5.94,
    ),
    CryptoDataModel(
      data1: "USDT",
      data2: "BUSD",
      amount: 365,
      percentage: -50.94,
    ),
  ];

  // Getter: Class Methods
  List<CryptoDataModel> get getCryptoDataList => _cryptoDataList;
}
