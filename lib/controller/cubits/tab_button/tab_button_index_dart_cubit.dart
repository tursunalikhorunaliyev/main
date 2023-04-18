import 'package:bloc/bloc.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';

class TabButtonIndexDartCubit extends Cubit<TabButtonIndexDartState> {
  TabButtonIndexDartCubit() : super(TabButtonIndex(buttonIndex: 0));
}
