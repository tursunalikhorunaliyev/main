import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'payment_details_event.dart';
part 'payment_details_state.dart';

class PaymentDetailsBloc
    extends Bloc<PaymentDetailsEvent, PaymentDetailsState> {
  PaymentDetailsBloc()
      : super(const PaymentDetailsData(oplata: 0, skidka: 0, summa: 0)) {
    on<PaymentDataFromServer>((event, emit) {});
  }
}
