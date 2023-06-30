import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tartarus/Controllers/AskUyumuController.dart';
import 'package:tartarus/Models/BurclarModels.dart';

import 'AskUyumuSonucView.dart';

class AskUyumuView extends StatelessWidget {
  List<BurclarModels> burcModel = [
    BurclarModels(
      name: "Koç",
      image: "assets/Burclar/koc.svg",
    ),
    BurclarModels(
      name: "Boğa",
      image: "assets/Burclar/boga.svg",
    ),
    BurclarModels(
      name: "İkizler",
      image: "assets/Burclar/ikizler.svg",
    ),
    BurclarModels(
      name: "Yengeç",
      image: "assets/Burclar/yengec.svg",
    ),
    BurclarModels(
      name: "Aslan",
      image: "assets/Burclar/aslan.svg",
    ),
    BurclarModels(
      name: "Başak",
      image: "assets/Burclar/basak.svg",
    ),
    BurclarModels(
      name: "Terazi",
      image: "assets/Burclar/terazi.svg",
    ),
    BurclarModels(
      name: "Akrep",
      image: "assets/Burclar/akrep.svg",
    ),
    BurclarModels(
      name: "Yay",
      image: "assets/Burclar/yay.svg",
    ),
    BurclarModels(
      name: "Oğlak",
      image: "assets/Burclar/oglak.svg",
    ),
    BurclarModels(
      name: "Kova",
      image: "assets/Burclar/kova.svg",
    ),
    BurclarModels(
      name: "Balık",
      image: "assets/Burclar/balik.svg",
    ),
  ];
  AskUyumuCon askUyumuCon = Get.put(AskUyumuCon());

  /*_pageController.animateToPage(1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn); */

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
              image: AssetImage("assets/askfali.png"),
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
                  Color(0xFF00A5A5),
                  Color(0xFFC7EDE6),
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
                child: PageView(
                  controller: askUyumuCon.pageController,
                  children: [
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            width: 100.w,
                            height: 9.h,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Center(
                                  child: Text(
                                "2 Tane Burç Seç",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 100.w,
                            height: 80.h,
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.all(4.w),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.75,
                              ),
                              itemCount: 12,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: () {
                                      askUyumuCon.changeSelected(index);
                                      print("tıklandı");
                                      askUyumuCon.pageController.animateToPage(
                                          1,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.easeIn);
                                    },
                                    child: Obx(
                                      () => Container(
                                        width: 40.w,
                                        height: 20.h,
                                        margin: EdgeInsets.all(2.w),
                                        decoration: BoxDecoration(
                                          //color: askcon.colors[index],
                                          color: askUyumuCon.selected == index
                                              ? Color(0xFF00A5A5)
                                              : Color.fromARGB(255, 2, 1, 53),

                                          //color: askUyumuCon.selected2 == index ? Colors.green : Color.fromARGB(255, 2, 1, 53),
                                          //color: Color.fromARGB(255, 2, 1, 53),
                                          /*                              askUyumuCon.selected == index
                                        ? Colors.green
                                        : Color.fromARGB(255, 2, 1, 53) ,
                                        */
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                              burcModel[index].image!,
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                            Text(
                                              burcModel[index].name!,
                                              style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 22.sp,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100.w,
                          height: 9.h,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Center(
                                child: GestureDetector(
                              onTap: () {
                                Get.to(() => AskUyumuSonuc(),
                                    transition: Transition.rightToLeft);
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 1.h),
                                width: 60.w,
                                height: 15.h,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color.fromARGB(255, 165, 0, 0),
                                      Color.fromARGB(255, 255, 22, 80),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Devam et",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 100.w,
                          height: 80.h,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.all(4.w),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, // 
                              childAspectRatio: 0.75,
                            ),
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    askUyumuCon.changeSelected2(index);
                                  },
                                  child: Obx(
                                    () => Container(
                                      width: 40.w,
                                      height: 20.h,
                                      margin: EdgeInsets.all(2.w),
                                      decoration: BoxDecoration(
                                        //color: askcon.colors[index],
                                        color: askUyumuCon.selected2 == index
                                            ? Color(0xFF00A5A5)
                                            : Color.fromARGB(255, 2, 1, 53),

                                        //color: askUyumuCon.selected2 == index ? Colors.green : Color.fromARGB(255, 2, 1, 53),
                                        //color: Color.fromARGB(255, 2, 1, 53),
/*                              askUyumuCon.selected == index
                                      ? Colors.green
                                      : Color.fromARGB(255, 2, 1, 53) ,
                                      */
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            burcModel[index].image!,
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                          Text(
                                            burcModel[index].name!,
                                            style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ));
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
