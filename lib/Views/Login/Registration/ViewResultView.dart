import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tartarus/Views/LoadingView.dart';

class ViewResultView extends StatelessWidget {
  const ViewResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08041C),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100.w,
            height: 90.w,
            margin: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/astrology.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 4.w),
          Text(
            'Your personal horoscope is ready',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 23.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.0.w, right: 2.0.w),
            child: Text(
              'Know more about yourself with our experts conclision',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.w),
          InkWell(
            onTap: () {
              Get.to(() => LoadingView(),
                  transition: Transition.rightToLeft,
                  duration: Duration(milliseconds: 500));
            },
            child: Container(
              width: 90.w,
              height: 15.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFFF87F3),
                    Color(0xFF8F00FF),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "VIEW RESULT",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
