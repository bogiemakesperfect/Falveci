import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BurcUyumuView extends StatelessWidget {
  const BurcUyumuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFF08041C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          iconSize: 20.sp,
          splashRadius: 20.sp,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        title: Container(
          color: Colors.transparent,
          width: 17.w,
          height: 17.h,
          child: Lottie.asset(
              "assets/maleprofile.json", // "assets/femaleprofile.json",
              fit: BoxFit.contain),
        ),
      ),
      body: Container(),
    );
  }
}
