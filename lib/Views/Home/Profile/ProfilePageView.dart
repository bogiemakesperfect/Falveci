import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

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
        body: Column(
          children: [
            Container(
              width: 100.w,
              height: 10.h,
              margin: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.w),
              decoration: BoxDecoration(
                color: Color(0xFF170355),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Column(
              children: [
                Container(
                  width: 100.w,
                  height: 80.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 30.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF735DC7),
                            width: 2,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://www.qries.com/images/banner_logo.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        "Bugra Kul",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40.w,
                            height: 18.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF170355),
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset("assets/Burclar/balik.svg",
                                    width: 23.w,
                                    height: 9.h,
                                    color: Colors.white),
                                Text(
                                  "Balık",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "30 aralık 2002 20:00",
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 40.w,
                            height: 18.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF170355),
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset("assets/male.svg",
                                    width: 23.w,
                                    height: 9.h,
                                    color: Colors.white),
                                Text(
                                  "Cinsiyet",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Cinsiyetin erkek",
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40.w,
                            height: 18.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF170355),
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset("assets/location.svg",
                                    width: 23.w,
                                    height: 9.h,
                                    color: Colors.white),
                                Text(
                                  "Ankara",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Burda yaşıyorsun",
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 40.w,
                            height: 18.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF170355),
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/procard.svg",
                                  width: 23.w,
                                  height: 9.h,
                                ),
                                Shimmer.fromColors(
                                  baseColor: Colors.white,
                                  highlightColor: Colors.pink,
                                  child: Text(
                                    "Ücretsiz", // Pro
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Ücretsiz kullanıcı",
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        width: 75.w,
                        height: 10.h,
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFDC1C13),
                              Color(0xFFF07470),
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.logout,
                              color: Colors.white,
                              size: 30.sp,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              "Çıkış Yap",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
