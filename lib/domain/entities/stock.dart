class Stock {
  final String name;
  final String exchangeName;
  final double latestPrices;
  final double dayChange;
  final double percentChange;
  final bool isUptrend;

  const Stock({
    required this.name,
    this.exchangeName = "NSE",
    required this.latestPrices,
    required this.dayChange,
    required this.percentChange,
    required this.isUptrend,
  });
}
