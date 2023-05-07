import 'package:bloc/bloc.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';

class TabButtonIndexCubit extends Cubit<TabButtonIndexState> {
  TabButtonIndexCubit() : super(TabButtonIndex(slideIndex: -1));
}
