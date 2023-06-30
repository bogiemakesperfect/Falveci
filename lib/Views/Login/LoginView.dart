import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tartarus/Views/LoadingView.dart';
import 'package:tartarus/Views/Login/Registration/PageView.dart';
import 'package:tartarus/Views/Login/SignIn/SignInView.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFF08041C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Lottie.asset(
                  'assets/fallingmeteor.json',
                  height: 100.h,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 100.w,
                  margin: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pngMainLogo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 15.h,
            width: 100.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Falveci',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.0.w, right: 4.0.w),
                  child: Text(
                    'Peronal burcunuz cep ve tarot falınız telefonunuzda. Uzmanların yorumlarıyla kendiniz hakkında daha fazla bilgi edinin',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 100.w,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => LoginOneView(),
                          transition: Transition.rightToLeft);
                    },
                    child: Container(
                      width: 90.w,
                      height: 17.w,
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
                          'Hemen Başla',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SignInView(),
                          transition: Transition.rightToLeft);
                    },
                    child: Container(
                      width: 90.w,
                      height: 17.w,
                      decoration: BoxDecoration(
                        color: Color(0xFF60046C),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'ZATEN BİR HESABIM VAR',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
