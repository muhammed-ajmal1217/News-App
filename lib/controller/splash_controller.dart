  import 'package:flutter/material.dart';
import 'package:myapp/view/home.dart';

Future<void> gotoHome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 0));
    // ignore: use_build_context_synchronously
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => HomePage(),
    ));
  }