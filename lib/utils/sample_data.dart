class SampleData {
  // Example JSON response
static final sampleTransactionData = {
  "totalTransaction": 1000.0,
  "transactions": [
    {
      "appName": "Netflix",
      "reason": "Subscription",
      "amount": 15.99,
      "isIncome": false,
      "date": "2025-01-10T12:34:56Z",
      "appIconUrl": "https://example.com/netflix.png"
    },
    {
      "appName": "Uber",
      "reason": "Ride payment",
      "amount": 25.5,
      "isIncome": false,
      "date": "2025-01-11T15:00:00Z",
      "appIconUrl": "https://example.com/uber.png"
    }
  ]
};
static final sampleIncomeData = {
  "totalCount": 5,
  "data": [
    {"type": "income1", "amount": 500.0},
    {"type": "income2", "amount": 200.0},
    {"type": "income3", "amount": 150.0},
    {"type": "income4", "amount": 300.0},
    {"type": "income5", "amount": 400.0},
  ]
};

static final sampleOutcomeData = {
  "totalCount": 5,
  "data": [
    {"type": "outcome1", "amount": 500.0},
    {"type": "outcome2", "amount": 200.0},
    {"type": "outcome3", "amount": 150.0},
    {"type": "outcome4", "amount": 300.0},
    {"type": "outcome5", "amount": 400.0},
  ]
};




  
}