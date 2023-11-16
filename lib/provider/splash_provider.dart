import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier{
  bool isloading = true;
  void splashLoading(bool value){
    isloading=value;
    notifyListeners();
  }
}