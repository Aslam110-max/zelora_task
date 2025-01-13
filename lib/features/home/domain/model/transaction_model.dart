class RecentTransactions {
  final double totalTransaction;
  final List<Transaction> transactions;

  RecentTransactions({
    required this.totalTransaction,
    required this.transactions,
  });

  factory RecentTransactions.fromJson(Map<String, dynamic> json) {
    return RecentTransactions(
      totalTransaction: json['totalTransaction'] ?? 0.0,
      transactions: (json['transactions'] as List<dynamic>)
          .map((transactionJson) => Transaction.fromJson(transactionJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalTransaction': totalTransaction,
      'transactions': transactions.map((transaction) => transaction.toJson()).toList(),
    };
  }
}

class Transaction {
  final String appName;
  final String reason;
  final double amount;
  final bool isIncome;
  final DateTime date;
  final String appIconUrl;

  Transaction({
    required this.appName,
    required this.reason,
    required this.amount,
    required this.isIncome,
    required this.date,
    required this.appIconUrl,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      appName: json['appName'] ?? '',
      reason: json['reason'] ?? '',
      amount: (json['amount'] as num).toDouble(),
      isIncome: json['isIncome'] ?? false,
      date: DateTime.parse(json['date']),
      appIconUrl: json['appIconUrl'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'appName': appName,
      'reason': reason,
      'amount': amount,
      'isIncome': isIncome,
      'date': date.toIso8601String(),
      'appIconUrl': appIconUrl,
    };
  }
}
