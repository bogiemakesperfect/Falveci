import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tartarus/Models/Fallarmodels.dart';
import 'package:tartarus/Views/Home/AllFal/Fallar/Ask%20Uyumu/AskUyumuView.dart';
import 'package:tartarus/Views/Home/AllFal/Fallar/BurcUyumuView.dart';
import 'package:tartarus/Views/Home/AllFal/Fallar/BurcYorumuView.dart';
import 'package:tartarus/Views/Home/AllFal/Fallar/GununFaliView.dart';
import 'package:tartarus/Views/Home/AllFal/Fallar/Is%C4%B1mAnlam%C4%B1View.dart';
import 'package:tartarus/Views/Home/AllFal/Fallar/KurabiyeFaliView.dart';
import 'package:tartarus/Views/Home/AllFal/Fallar/TarotFaliView.dart';

class TumFallar extends StatelessWidget {
  List<FallarModels> tumFallar = [
    FallarModels(
      name: "Kurabiye Falı",
      aciklama: "Aşk falı yapmak isteyenler için hazırlanmıştır.",
      image: "assets/kurabiyefali.png",
      colorone: Color(0xFFFFB83E),
      colortwo: Color(0xFFFFCF82),
      shadowColor: Color(0xFFFFB83E),
    ),
    FallarModels(
      name: "Aşk Uyumu",
      aciklama: "Çocuk falı yapmak isteyenler için hazırlanmıştır.",
      image: "assets/askfali.png",
      colorone: Color(0xFF00A5A5),
      colortwo: Color(0xFFC7EDE6),
      shadowColor: Color(0xFF00A5A5),
    ),
    FallarModels(
      name: "Burç Uyumu",
      aciklama: "İki burç arasındaki uyumu öğrenmek için hazırlanmıştır.",
      image: "assets/burcuyumu.png",
      colorone: Color(0xFF387BEA),
      colortwo: Color(0xFFDF83FF),
      shadowColor: Color(0xFFDF83FF),
    ),
    FallarModels(
      name: "Günün Falı",
      aciklama: "Evlilik falı yapmak isteyenler için hazırlanmıştır.",
      image: "assets/gununfali.png",
      colorone: Color(0xFF6934FF),
      colortwo: Color(0xFF87CAFF),
      shadowColor: Color(0xFF6934FF),
    ),
    FallarModels(
      name: "Tarot falı",
      aciklama: "Gelecek falı yapmak isteyenler için hazırlanmıştır.",
      image: "assets/tarotcard.png",
      colorone: Color(0xFF16C5C5),
      colortwo: Color(0xFF2DA3FF),
      shadowColor: Color(0xFF16C5C5),
    ),
    FallarModels(
      name: "Burç Yorumu",
      aciklama: "İş falı yapmak isteyenler için hazırlanmıştır.",
      image: "assets/burcyorumu.png",
      colorone: Color(0xFFFF4874),
      colortwo: Color(0xFFEF8EB8),
      shadowColor: Color(0xFFFF4874),
    ),
    FallarModels(
      name: "İsim Anlamı",
      aciklama: "İş falı yapmak isteyenler için hazırlanmıştır.",
      image: "assets/isimyorum.png",
      colorone: Color(0xFF387BEA),
      colortwo: Color(0xFFDF83FF),
      shadowColor: Color(0xFFDF83FF),
    ),
  ];

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
          child: Lottie.asset(
            "assets/donenkure.json",
            width: 8.w,
            height: 8.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: Column(
        children: [
          Appbar(),
          Expanded(
            child: Container(
              width: 100.w,
              height: 100.h,
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: tumFallar.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(
                          () => index == 0
                              ? KurabiyeFaliView()
                              : index == 1
                                  ? AskUyumuView()
                                  : index == 2
                                      ? BurcUyumuView()
                                      : index == 3
                                          ? GununFaliView()
                                          : index == 4
                                              ? TarotFaliView()
                                              : index == 5
                                                  ? BurcYorumuView()
                                                  : IsimAnlamiView(),
                          transition: Transition.rightToLeft);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 4.w, right: 4.w, top: 1.w, bottom: 4.w),
                      width: 100.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: tumFallar[index].shadowColor!,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.w))),
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
                                        color: Colors.black45,
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
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Container TarotFali() {
    return Container(
      width: 100.w,
      height: 20.h,
      margin: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(-3, 5),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFEF8EB8),
            Color(0xFFEF8EB8),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: Text("Tarot Falı",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  Container Appbar() {
    return Container(
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
    );
  }
}
