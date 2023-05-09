// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'payment_details_bloc.dart';

abstract class PaymentDetailsState extends Equatable {
  const PaymentDetailsState();

  @override
  List<Object> get props => [];
}

class PaymentDetailsData extends PaymentDetailsState {
  final int oplata;
  final int skidka;
  final int summa;
  const PaymentDetailsData({
    required this.oplata,
    required this.skidka,
    required this.summa,
  });
}
