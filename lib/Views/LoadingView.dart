import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tartarus/Controllers/LoadingGet.dart';

class LoadingView extends StatelessWidget {
  List<String> images = [
    "assets/Burclar/aslan.svg",
    "assets/Burclar/ikizler.svg",
    "assets/Burclar/koc.svg",
    "assets/Burclar/terazi.svg",
    "assets/Burclar/yay.svg",
    "assets/Burclar/yengec.svg",
    "assets/Burclar/boga.svg",
    "assets/Burclar/kova.svg",
    "assets/Burclar/oglak.svg",
    "assets/Burclar/oglak.svg",
    "assets/Burclar/terazi.svg",
    "assets/Burclar/yay.svg",
    "assets/Burclar/yengec.svg",
    "assets/Burclar/boga.svg",
    "assets/Burclar/kova.svg",
  ];

  LoadingScreenController contr = Get.put(LoadingScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08041C),
      body: Column(
        children: [
          Container(
              width: 100.w,
              height: 80.h,
              padding: EdgeInsets.all(20.w),
              child: Lottie.asset("assets/loadingcubuk.json",
                  fit: BoxFit.contain)),
          Center(
            child: Text(
              "Analiz ediliyor",
              style: GoogleFonts.poppins(
                color: Color(0xFFD700FF),
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
