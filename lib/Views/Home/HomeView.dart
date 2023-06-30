import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tartarus/Models/Fallarmodels.dart';
import 'package:tartarus/Views/Home/AllFal/T%C3%BCmFallar.dart';
import 'package:tartarus/Views/Home/Profile/ProfilePageView.dart';
import 'package:tartarus/Views/Setting/SettingView.dart';

class HomeView extends StatelessWidget {
  List<FallarModels> tumFallar = [
    FallarModels(
      name: "Kurabiye Falı",
      aciklama: "Aşk falı yapmak isteyenler için hazırlanmıştır.",
      image: "assets/kurabiyefali.png",
      colorone: Color(0xFFFFCF82),
      colortwo: Color(0xFFFFB83E),
      shadowColor: Color(0xFFFFCF82),
    ),
    FallarModels(
      name: "Aşk Falı",
      aciklama: "Çocuk falı yapmak isteyenler için hazırlanmıştır.",
      image: "assets/askfali.png",
      colorone: Color(0xFF8F00FF),
      colortwo: Color(0xFFFF5CAB),
      shadowColor: Color.fromARGB(255, 192, 186, 189),
    ),
    FallarModels(
      name: "Günün Falı",
      aciklama: "Evlilik falı yapmak isteyenler için hazırlanmıştır.",
      image: "assets/gununfali.png",
      colorone: Color(0xFF6934FF),
      colortwo: Color(0xFF87CAFF),
      shadowColor: Color(0xFF87CAFF),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08041C),
      body: Column(
        children: [
          SizedBox(
            width: 100.w,
            height: 50.h,
            child: Stack(
              children: [
                Container(
                  width: 100.w,
                  height: 40.h,
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.0.w, right: 0.0.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Selam Bugra",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey[300],
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("Hosgeldin",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: GestureDetector(
                                    onTap: (() {
                                      Get.to(() => SettingView(),
                                          transition: Transition.rightToLeft);
                                    }),
                                    child: SvgPicture.asset(
                                      "assets/settingnew.svg",
                                      color: Colors.white,
                                      width: 12.w,
                                      height: 12.w,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (() {
                                    Get.to(() => ProfilePageView(),
                                        transition: Transition.rightToLeft);
                                  }),
                                  child: Container(
                                    width: 20.w,
                                    height: 20.w,
                                    child: Lottie.asset(
                                        "assets/maleprofile.json", // "assets/femaleprofile.json",
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                          width: 100.w,
                          height: 16.h,
                          margin:
                              EdgeInsets.only(left: 4.w, right: 4.w, top: 1.w),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.6),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(-3, 5),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFF8F00FF),
                                Color(0xFF6F00FF),
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Lottie.asset(
                                    "assets/burcarkasi.json",
                                    fit: BoxFit.contain,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 11.0.w, top: 10.0.w),
                                    child: SvgPicture.asset(
                                      "assets/Burclar/balik.svg",
                                      width: 12.w,
                                      height: 12.w,
                                      alignment: Alignment.center,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(" Hemen analiz et",
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text(" Günlük burç yorumun",
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ],
                          ))
                      /*
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.all(2.w),
                                height: 20.w,
                                child: SvgPicture.asset(
                                  "assets/Burclar/balik.svg",
                                  color: Color(0xFFEF8EB8),
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.all(2.w),
                              height: 40.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Günlük hakkın",
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 21.sp,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Shimmer.fromColors(
                                    baseColor: Colors.white,
                                    highlightColor: Color(0xFFFF87F3),
                                    child: Text("3",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFFFF87F3),
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                      */
                    ],
                  ),
                ),
                Positioned(
                  bottom: 8.w,
                  left: 7.w,
                  child: Container(
                    width: 40.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(-3, 5),
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF8F00FF),
                          Color(0xFF6F00FF),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Lottie.asset(
                            "assets/donenkure.json",
                            width: 14.w,
                            height: 14.w,
                          ),
                          Text("Falla",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 23.sp,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8.w,
                  right: 7.w,
                  child: Container(
                    width: 40.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(-3, 5),
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Color(0xFF8F00FF),
                          Color(0xFF6F00FF),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/coininhand.svg",
                            width: 14.w,
                            height: 14.w,
                          ),
                          SizedBox(width: 2.w),
                          Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.yellow,
                            child: Text("50",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.0.w, right: 4.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Popüler Fallar",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                    )),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => TumFallar(),
                      transition: Transition.fadeIn,
                    );
                  },
                  child: Container(
                    width: 28.w,
                    height: 4.h,
                    padding: EdgeInsets.all(1.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Color(0xFF170355),
                    ),
                    child: Center(
                      child: Text("Tümünü Gör",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.h),
          Expanded(
              child: Container(
            width: 100.w,
            height: 100.h,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              physics: BouncingScrollPhysics(),
              itemCount: tumFallar.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: 4.w, right: 4.w, top: 1.w, bottom: 4.w),
                  width: 100.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: tumFallar[index].colorone!,
                          blurRadius: 8,
                          offset: Offset(-4, 4), // Shadow position
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          tumFallar[index].colorone!,
                          tumFallar[index].colortwo!,
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.w))),
                  child: Row(
                    children: [
                      Container(
                        width: 55.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.w),
                                bottomLeft: Radius.circular(10.w))),
                        child: Padding(
                          padding: EdgeInsets.all(4.0.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tumFallar[index].name!,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text(tumFallar[index].aciklama!,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Spacer(),
                              Container(
                                width: 10.w,
                                height: 10.w,
                                decoration: BoxDecoration(
                                    color: Color(0xFF170355),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.w))),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 20.sp,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 37.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.w),
                              bottomRight: Radius.circular(10.w)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(4.0.w),
                          child: Image.asset(
                            tumFallar[index].image!,
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
