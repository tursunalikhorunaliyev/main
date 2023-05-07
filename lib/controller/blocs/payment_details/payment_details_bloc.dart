import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'payment_details_event.dart';
part 'payment_details_state.dart';

class PaymentDetailsBloc extends Bloc<PaymentDetailsEvent, PaymentDetailsState> {
  PaymentDetailsBloc() : super(PaymentDetailsInitial()) {
    on<PaymentDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
