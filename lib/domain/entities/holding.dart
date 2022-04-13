import 'package:persuit/domain/entities/stock.dart';

class Holding {
  final int quantity;
  final double avgPrice;
  final double overallProfitPercentage;
  final double overallProfitPrice;
  final double totalInvested;
  final bool isInProfit;
  final Stock stock;

  const Holding({
    required this.quantity,
    required this.avgPrice,
    required this.overallProfitPercentage,
    required this.overallProfitPrice,
    required this.totalInvested,
    required this.stock,
    this.isInProfit = false,
  });
}
