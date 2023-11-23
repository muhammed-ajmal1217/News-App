  import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

Animate animAtion({int? seconds,String? text,Color? color,double? fontSize}) {
    return Animate(
                      effects: [
                        SlideEffect(
                          begin: BlurEffect.defaultValue,
                          duration: Duration(seconds: seconds!)),
                        FadeEffect(),
                      ],
                      child: Text(text!,
                          style: GoogleFonts.prompt(
                              color:color, fontSize: fontSize)),
                    );
  }

  SizedBox spacingHeight(double height) {
    return SizedBox(
            height: height,
          );
  }