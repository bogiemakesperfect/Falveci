import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'package:tartarus/Controllers/AnimatedProgressBar.dart';
import 'package:tartarus/Views/LoadingView.dart';

class LoginOneView extends StatelessWidget {
  LoginOneViewController contr = Get.put(LoginOneViewController());
  PageController pageController = PageController();

  List<String> Citys = [
    "Adana",
    "Adıyaman",
    " Afyonkarahisar",
    "Ağrı",
    " Aksaray",
    " Amasya",
    " Ankara",
    " Antalya",
    "Ardahan",
    " Artvin",
    " Aydın",
    " Balıkesir",
    " Bartın",
    "Batman",
    "Bayburt",
    "Bilecik",
    "Bingöl",
    "Bitlis",
    "Bolu",
    "Burdur",
    "Bursa",
    "Çanakkale",
    "Çankırı",
    "Çorum",
    "Denizli",
    "Diyarbakır",
    "Düzce",
    "Edirne",
    "Elazığ",
    "Erzincan",
    "Erzurum",
    "Eskişehir",
    "Gaziantep",
    "Giresun",
    "Gümüşhane",
    "Hakkâri",
    "Hatay",
    "Iğdır",
    "Isparta",
    "İstanbul",
    "İzmir",
    "Kahramanmaraş",
    "Karabük",
    "Karaman",
    "Kars",
    "Kastamonu",
    "Kayseri",
    "Kilis",
    "Kırıkkale",
    "Kırklareli",
    "Kırşehir",
    "Kocaeli",
    "Konya",
    "Kütahya",
    "Malatya",
    "Manisa",
    "Mardin",
    "Mersin",
    "Muğla",
    "Muş",
    "Nevşehir",
    "Niğde",
    "Ordu",
    "Osmaniye",
    "Rize",
    "Sakarya",
    "Samsun",
    "Şanlıurfa",
    "Siirt",
    "Sinop",
    "Sivas",
    "Şırnak",
    "Tekirdağ",
    "Tokat",
    "Trabzon",
    "Tunceli",
    "Uşak",
    "Van",
    "Yalova",
    "Yozgat",
    "Zonguldak",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
            if (contr.currentPage.value == 0) {
              Get.back();
            } else {
              contr.decrementProgressValue();
              contr.decrementCurrentPage();
              pageController.animateToPage(contr.currentPage.value,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            }
          },
        ),
        title: Container(
            color: Colors.transparent,
            width: 55.w,
            child: Obx(
              () => FAProgressBar(
                currentValue: contr.progressValue.value,
                maxValue: 80,
                size: 10.0,
                progressColor: Color(0xFFD700FF),
                backgroundColor: Colors.grey,
                direction: Axis.horizontal,
              ),
            )),
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          PageOne(),
          PageTwo(),
          PageThree(),
          PageFour(),
          PageFive(),
          PageSix(),
          PageSeven(),
        ],
      ),
    );
  }

  Container PageOne() {
    return Container(
      width: 100.w,
      height: 100.h,
      color: Color(0xFF08041C),
      child: Padding(
        padding: EdgeInsets.only(top: 20.w, left: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Giriş yap:",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              width: 90.w,
              height: 90.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email:",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                  ),
                  Text(
                    "Şifre:",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                  ),
                  Text(
                    "Şifreni Onayla:",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  InkWell(
                    onTap: () {
                      contr.incrementProgressValue();
                      contr.incrementCurrentPage();
                      pageController.animateToPage(contr.currentPage.value,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
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
                  width: 35.w,
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
                  width: 37.w,
                  height: 1.w,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
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
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Zaten hesabınız var mı!",
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

  Container PageTwo() => Container(
        width: 100.w,
        height: 100.h,
        color: Color(0xFF08041C),
        child: Padding(
          padding: EdgeInsets.only(top: 30.w, left: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Adın ne?",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600)),
                  Text("Hadi tanışalım!",
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(
                height: 5.w,
              ),
              Container(
                width: 90.w,
                height: 45.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ad:",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.white), //<-- SEE HERE
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    InkWell(
                      onTap: () {
                        contr.incrementProgressValue();
                        contr.incrementCurrentPage();
                        pageController.animateToPage(contr.currentPage.value,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease);
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
              )
            ],
          ),
        ),
      );
  Container PageThree() {
    return Container(
      width: 100.w,
      height: 100.h,
      color: Color(0xFF08041C),
      child: Padding(
        padding: EdgeInsets.only(top: 20.w, left: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Doğum günün ne zaman?",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600)),
                Text(
                    "Bize doğum tarihinizi söyleyin, size hakkınızda daha fazla bilgi verelim.",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            Container(
              width: 90.w,
              height: 120.w,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFFFF87F3),
                    Color(0xFF8F00FF),
                  ],
                ),
              ),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: contr.selectedDate.value,
                onDateTimeChanged: (DateTime value) {
                  contr.selectedDate.value = value;
                },
                use24hFormat: true,
              ),
            ),
            InkWell(
              onTap: () {
                contr.incrementProgressValue();
                contr.incrementCurrentPage();
                pageController.animateToPage(contr.currentPage.value,
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
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
    );
  }

  Container PageFour() {
    return Container(
      width: 100.w,
      height: 100.h,
      color: Color(0xFF08041C),
      child: Padding(
        padding: EdgeInsets.only(top: 20.w, left: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Doğum saatin ne?",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600)),
                Text("Doğum saatinizi bilmiyorsanız 12:00 olarak ayarlayın.",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            Container(
              width: 90.w,
              height: 120.w,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFFFF87F3),
                    Color(0xFF8F00FF),
                  ],
                ),
              ),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                initialDateTime: contr.selectedTime.value,
                onDateTimeChanged: (DateTime value) {
                  contr.selectedTime.value = value;
                },
                use24hFormat: true,
              ),
            ),
            InkWell(
              onTap: () {
                contr.incrementProgressValue();
                contr.incrementCurrentPage();
                pageController.animateToPage(contr.currentPage.value,
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
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
    );
  }

  Container PageFive() {
    return Container(
        width: 100.w,
        height: 100.h,
        color: Color(0xFF08041C),
        child: Padding(
          padding: EdgeInsets.only(top: 20.w, left: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nerede doğdun?",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600)),
                  Text("Doğru yıldız falına bakmamıza yardımcı olacak",
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Container(
                width: 90.w,
                height: 120.w,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: Citys.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                contr.changeCitySelected(index);
                              },
                              child: Container(
                                width: 85.w,
                                height: 18.w,
                                decoration: BoxDecoration(
                                  color: contr.CityValue.value == index
                                      ? Color(0xFF6F00FF).withOpacity(0.3)
                                      : Color(0xFF6F00FF).withOpacity(0.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 6.0.w),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(Citys[index],
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.w, right: 6.w),
                              child: Divider(
                                color: Color(0xFF6F00FF),
                                height: 1.w,
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  contr.incrementProgressValue();
                  contr.incrementCurrentPage();
                  pageController.animateToPage(contr.currentPage.value,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
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
        ));
  }

  Container PageSix() {
    return Container(
        width: 100.w,
        height: 100.h,
        color: Color(0xFF08041C),
        child: Padding(
          padding: EdgeInsets.only(top: 20.w, left: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cinsiyetinizi seçiniz?",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600)),
                  Text(
                      "Girdiğin bilgiler doğruysa doğru yıldız falına bakmamıza yardımcı olacak",
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Container(
                width: 90.w,
                height: 120.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () {
                            return GestureDetector(
                              onTap: () {
                                contr.changeGender("Female");
                              },
                              child: Container(
                                width: 43.w,
                                height: 40.w,
                                decoration: BoxDecoration(
                                  color: contr.selectedGender.value == "Female"
                                      ? Color(0xFF6F00FF).withOpacity(0.3)
                                      : Color(0xFF6F00FF).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/female.svg",
                                      width: 15.w,
                                      height: 15.w,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 2.w,
                                    ),
                                    Text("Kadın",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        Obx(
                          () {
                            return GestureDetector(
                              onTap: () {
                                contr.changeGender("Male");
                              },
                              child: Container(
                                width: 43.w,
                                height: 40.w,
                                decoration: BoxDecoration(
                                  color: contr.selectedGender.value == "Male"
                                      ? Color(0xFF6F00FF).withOpacity(0.3)
                                      : Color(0xFF6F00FF).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/male.svg",
                                      width: 15.w,
                                      height: 15.w,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 2.w,
                                    ),
                                    Text("Erkek",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 4.w),
                    Obx(
                      () {
                        return GestureDetector(
                          onTap: () {
                            contr.changeGender("Other");
                          },
                          child: Container(
                            width: 90.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              color: contr.selectedGender.value == "Other"
                                  ? Color(0xFF6F00FF).withOpacity(0.3)
                                  : Color(0xFF6F00FF).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/maleandfemale.svg",
                                  width: 15.w,
                                  height: 15.w,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 2.w,
                                ),
                                Text("Diğer",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  contr.incrementProgressValue();
                  contr.incrementCurrentPage();
                  pageController.animateToPage(contr.currentPage.value,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
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
        ));
  }

  Container PageSeven() {
    return Container(
        width: 100.w,
        height: 100.h,
        color: Color(0xFF08041C),
        child: Padding(
            padding: EdgeInsets.only(top: 20.w, left: 5.w),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Elinin fotoğrafını çek",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600)),
                      Text(
                          "El falı okuyucularımızın elinizi okuması için elinizi fotoğraflayın.",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Container(
                      width: 90.w,
                      height: 100.w,
                      padding: EdgeInsets.only(right: 10.w),
                      child: Center(
                        child: Lottie.asset(
                            "assets/hand.json",
                            fit: BoxFit.fill,
                            width: 80.w,
                            height: 90.w),
                      )),
                  InkWell(
                    onTap: () {
                      Get.to(() => LoadingView(),
                          transition: Transition.rightToLeft);
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
                ])));
  }
}
