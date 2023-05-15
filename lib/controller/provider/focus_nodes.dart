// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FocusNodesProvider extends ChangeNotifier {
  final FocusNode focusNodeSearchBox;
  final FocusNode focusNodeQtyPanel;
  final FocusNode focusNodeBottomPanel;
  final FocusNode focusNodeTopPanel;
  FocusNodesProvider({
    required this.focusNodeSearchBox,
    required this.focusNodeQtyPanel,
    required this.focusNodeBottomPanel,
    required this.focusNodeTopPanel,
  });
}
