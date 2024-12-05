import 'package:equatable/equatable.dart';

class PaymentIntentModel extends Equatable {
  final String id, clientSecret, currency;
  final int amount;
  const PaymentIntentModel(
      {required this.id,
      required this.amount,
      required this.clientSecret,
      required this.currency});

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) =>
      PaymentIntentModel(
          id: json['id'],
          amount: json['amount'],
          clientSecret: json['client_secret'],
          currency: json['currency']);

  @override
  List<Object?> get props => [
        id,
        amount,
        clientSecret,
        currency,
      ];
}
