part of 'payment_details_bloc.dart';

abstract class PaymentDetailsEvent extends Equatable {
  const PaymentDetailsEvent();

  @override
  List<Object> get props => [];
}

class PaymentDataFromServer extends PaymentDetailsEvent {}
