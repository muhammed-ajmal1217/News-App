import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myapp/controller/splash_controller.dart';
import 'package:myapp/controller/splash_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
    void initState() {
    super.initState();
    final splashProvider=Provider.of<SplashProvider>(context,listen: false);
    Future.delayed(const Duration(seconds: 5), () {
      splashProvider.splashLoading(false);
      gotoHome(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<SplashProvider>(
          builder: (context, value, child) => 
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/20943887-removebg-preview.png',height: 200,),
              SizedBox(height: 20,),
              if(value.isloading==true)
              SpinKitPouringHourGlass(color: const Color.fromARGB(255, 33, 243, 208))
              
            ],
          ),
        ),
      ),
    );
  }
}