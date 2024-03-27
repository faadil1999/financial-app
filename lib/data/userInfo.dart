
enum TransactionType {
  outflow,
  inflow,
}

enum ItemCategoryType {
  fashion, grocery, payments
}

class UserInfo{
  final String name;
  final double totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;
  const UserInfo(
      {required this.name,
        required this.totalBalance,
        required this.inflow,
        required this.outflow,
        required this.transactions
      });
}

class Transaction {
  final TransactionType transactionType;
  final ItemCategoryType categoryType;
  final String categoryName;
  final String itemName;
  final double amount;
  final String date;

  const Transaction({
    required this.transactionType,
    required this.categoryType,
    required this.categoryName,
    required this.itemName,
    required this.amount,
    required this.date
});
}

const List<Transaction>transactions = [
  Transaction(transactionType: TransactionType.outflow, categoryType: ItemCategoryType.grocery, categoryName: "Geocery", itemName: "Franc prix achat", amount: 125, date: "12/02/2024"),
  Transaction(transactionType: TransactionType.outflow, categoryType: ItemCategoryType.fashion, categoryName: "Fashion", itemName: "Sephora", amount: 503, date: "19/03/2024"),
  Transaction(transactionType: TransactionType.inflow, categoryType: ItemCategoryType.payments, categoryName: "Salary business", itemName: "Black bow income", amount: 9520, date: "18/02/2024"),
  Transaction(transactionType: TransactionType.outflow, categoryType: ItemCategoryType.fashion, categoryName: "Fashion perfum", itemName: "Lacos", amount: 40, date: "28/03/2024"),
  Transaction(transactionType: TransactionType.outflow, categoryType: ItemCategoryType.grocery, categoryName: "Geocery", itemName: "Franc prix achat", amount: 250, date: "12/06/2024"),
];

const userData = UserInfo(name: "Jhone", totalBalance: 35200, inflow: "3520", outflow: "4520", transactions: transactions);