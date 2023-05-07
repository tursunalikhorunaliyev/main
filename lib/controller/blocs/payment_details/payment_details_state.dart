part of 'payment_details_bloc.dart';

abstract class PaymentDetailsState extends Equatable {
  const PaymentDetailsState();
  
  @override
  List<Object> get props => [];
}

class PaymentDetailsInitial extends PaymentDetailsState {}
