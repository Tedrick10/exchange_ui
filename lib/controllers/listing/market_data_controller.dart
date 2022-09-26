// Models
import '../../models/listing/market_data_model.dart';

// MarketDataController: Controller Class
class MarketDataController {
  // Final: Class Properties
  final List<MarketDataModel> _bidMarketDataList = [
    MarketDataModel(price: 4.374, volume: 300),
    MarketDataModel(price: 4.372, volume: 10000),
    MarketDataModel(price: 4.370, volume: 500),
    MarketDataModel(price: 4.368, volume: 1000),
    MarketDataModel(price: 4.365, volume: 2000),
    MarketDataModel(price: 4.355, volume: 2030),
  ];
  final List<MarketDataModel> _askMarketDataList = [
    MarketDataModel(price: 4.375, volume: 27000),
    MarketDataModel(price: 4.368, volume: 19971),
    MarketDataModel(price: 4.382, volume: 15000),
    MarketDataModel(price: 4.386, volume: 7000),
    MarketDataModel(price: 4.387, volume: 1000),
    MarketDataModel(price: 4.432, volume: 2000),
  ];

  // Getter: Class Methods
  List<MarketDataModel> get getBidMarketDataList => _bidMarketDataList;
  List<MarketDataModel> get getAskMarketDataList => _askMarketDataList;
}
