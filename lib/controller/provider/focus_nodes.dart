// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FocusNodesProvider extends ChangeNotifier {
  final FocusNode focusNodeSearchBox;
  final FocusNode focusNodeQtyPanel;
  FocusNodesProvider({
    required this.focusNodeSearchBox,
    required this.focusNodeQtyPanel,
  });
  
}
