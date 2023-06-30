import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tartarus/Controllers/KurabiyeFaliCont.dart';

class KurabiyeFaliView extends StatelessWidget {
  KurabiyefaliController contrKurabiye = Get.put(KurabiyefaliController());

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
          width: 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/kurabiyefali.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100.w,
            height: 10.h,
            margin: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFFFCF82),
                  Color(0xFFFFB83E),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 100.w,
              height: 90.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.only(left: 11.w),
                      child: Obx(() {
                        return Container(
                          width: 100.w,
                          height: 100.h,
                          child: Lottie.network(
                            "https://assets7.lottiefiles.com/packages/lf20_KGe4XLsK0f.json",
                            repeat: false,
                            reverse: true,
                            animate:
                                contrKurabiye.isLoading.value ? true : false,
                          ),
                        );
                      }),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 100.w,
                      child: Align(
                          alignment: Alignment.center,
                          child: Obx(
                            () {
                              if (contrKurabiye.isLoading.value) { 
                                return Container(
                                  width: 90.w,
                                  height: 30.h,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Color(0xFFFFB83E),
                                      width: 1,
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color.fromARGB(255, 68, 43, 4),
                                        Color.fromARGB(255, 58, 39, 6),
                                      ],
                                    ),
                                  ),
                                  child: Text(
                                    "Maddi olarak güçlü olduğunuz ve bunu paylaşmak istediğiniz bir gün olabilir. Bazı isteklerinizin yerine gelmesi manevi yönden de bunun karşılığını vermeniz gerektiğini düşündürtebilir. Ölçüyü kaçırmayan, insanların ilgisini bir sıkılmışlığa dönüştürmeyen bir tutum sergilemelisiniz.",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                );
                              } else {
                                return Container(
                                  width: 90.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color.fromARGB(255, 68, 43, 4),
                                        Color.fromARGB(255, 58, 39, 6),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Kırmak için salla",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                          )),
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
