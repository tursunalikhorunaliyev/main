import 'package:flutter/material.dart';

class SearchWordProvider extends ChangeNotifier{
  String searchWord="";
  
  setSearchWord(String searchWord){
    this.searchWord = searchWord;
    notifyListeners();
  }

   String get getSearchWord => searchWord; 
}