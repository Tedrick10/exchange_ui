// Dart: Existing Libraries
import 'dart:math';

// Models
import '../../models/dashboard/cashflow_model.dart';

// CashflowPointsController: Controller Class
class CashflowPointsController {
  // Final: Class Properties
  final Random random = Random();

  // Getters: Class Methods
  List<CashflowModel> get getCashflowList => _generateRandomCashflowList();

  // Actions: Class Methods
  List<CashflowModel> _generateRandomCashflowList() {
    List<CashflowModel> cashflowList = [];

    for (int i = 1; i <= 10; i++) {
      final double pointX = (i - 1) + random.nextDouble() * i;
      final double pointY = random.nextDouble() * 5;
      final CashflowModel cashflowModel = CashflowModel(x: pointX, y: pointY);
      cashflowList.add(cashflowModel);
    }

    return cashflowList;
  }
}
