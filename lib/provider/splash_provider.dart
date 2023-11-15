import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashProvider extends ChangeNotifier{
  bool isloading = true;
  void splashLoading(bool value){
    isloading=value;
    notifyListeners();
  }
}