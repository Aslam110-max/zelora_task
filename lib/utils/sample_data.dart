import 'package:zelora_task/utils/images.dart';

class SampleData {
static final sampleTransactionData = {
  "totalTransaction": 1000.0,
  "transactions": [
    {
      "appName": "Youtube",
      "reason": "Subscription Payment",
      "amount": 15,
      "isIncome": false,
      "date": "2025-01-10T12:34:56Z",
      "appIconUrl": Images.youtube
    },
    {
      "appName": "Stripe",
      "reason": "Monthly Salary",
      "amount": 3000,
      "isIncome": true,
      "date": "2025-01-11T15:00:00Z",
      "appIconUrl": Images.stripe
    },
    {
      "appName": "Google Play",
      "reason": "E-book Purchase",
      "amount": 139,
      "isIncome": false,
      "date": "2025-01-11T15:00:00Z",
      "appIconUrl": Images.googlePlay
    },
    {
      "appName": "OVO",
      "reason": "Top Up E-Money",
      "amount": 180,
      "isIncome": false,
      "date": "2025-01-11T15:00:00Z",
      "appIconUrl": Images.ovo
    }
  ]
};
static final sampleIncomeData = {
  "totalCount": 4,
  "data": [
    {"type": "Monthly salary", "amount": 1200.0},
    {"type": "Passive Income", "amount": 2300.0},
    {"type": "Freelance", "amount": 1110.0},
    {"type": "Side Bussiness", "amount": 2400.0},
  ]
};

static final sampleOutcomeData = {
  "totalCount": 4,
  "data": [
    {"type": "Rent", "amount": 1100.0},
    {"type": "Recharge", "amount": 2500.0},
    {"type": "Monthly Grosaries", "amount": 900.0},
    {"type": "Car Fuel", "amount": 1800.0},
  ]
};




  
}