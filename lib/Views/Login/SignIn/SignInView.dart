import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tartarus/Views/LoadingView.dart';
import 'package:tartarus/Views/Login/Registration/PageView.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Giriş yap:",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 2.h),
            Container(
              width: 90.w,
              height: 80.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email:",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 1.h),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Şifre:",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 1.h),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
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
                          "DEVAM ET",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 36.w,
                  height: 1.w,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w, right: 2.w),
                  child: Text("yada",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400)),
                ),
                Container(
                  width: 36.w,
                  height: 1.w,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Container(
              width: 90.w,
              height: 15.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Image.asset(
                      "assets/google.png",
                      width: 10.w,
                      height: 10.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Text(
                      "GOOGLE İLE DEVAM ET",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h),
            Center(
              child: TextButton(
                onPressed: () {
                  Get.to(() => LoginOneView(),
                      transition: Transition.rightToLeft);
                },
                child: Text(
                  "Hesap oluştur!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      decoration: TextDecoration.underline,
                      color: Color(0xFFD700FF),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
