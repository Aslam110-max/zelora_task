class IncomeOutcomeSummary {
  final int totalCount;
  final List<IncomeOutcomeData> data;

  IncomeOutcomeSummary({
    required this.totalCount,
    required this.data,
  });

  factory IncomeOutcomeSummary.fromJson(Map<String, dynamic> json) {
    return IncomeOutcomeSummary(
      totalCount: json['totalCount'] ?? 0,
      data: (json['data'] as List<dynamic>)
          .map((item) => IncomeOutcomeData.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'data': data.map((item) => item.toJson()).toList(),
    };
  }
}

class IncomeOutcomeData {
  final String type;
  final double amount;

  IncomeOutcomeData({
    required this.type,
    required this.amount,
  });

  factory IncomeOutcomeData.fromJson(Map<String, dynamic> json) {
    return IncomeOutcomeData(
      type: json['type'] ?? '',
      amount: (json['amount'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'amount': amount,
    };
  }
}
