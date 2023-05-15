import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'top_selection_event.dart';
part 'top_selection_state.dart';

class TopSelectionBloc extends Bloc<TopSelectionEvent, TopSelectionState> {
  int dataLength = 0;

  TopSelectionBloc() : super(const TopSelectionData(nextIndex: 0)) {
    on<TopSelectionOnClick>((event, emit) {
      emit(TopSelectionData(nextIndex: event.currentIndex));
    });
    on<TopSelectionUp>((event, emit) {
      if (state.nextIndex != 0) {
        emit(TopSelectionData(nextIndex: state.nextIndex - 1));
      }
    });
    on<TopSelectionDown>((event, emit) {
      if (state.nextIndex != dataLength - 1) {
        emit(TopSelectionData(nextIndex: state.nextIndex + 1));
      }
    });
  }
  changeDataLength(int length) {
    dataLength = length;
  }
}
