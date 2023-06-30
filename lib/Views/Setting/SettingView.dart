import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

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
            width: 8.w,
            height: 8.h,
            child: SvgPicture.asset(
              "assets/settingnew.svg",
              color: Colors.white,
            ),
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
            Expanded(
              child: Container(
                width: 100.w,
                height: 100.h,
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(
                            left: 4.w, right: 4.w, top: 1.w, bottom: 4.w),
                        width: 100.w,
                        height: 25.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFF6934FF),
                                Color(0xFF87CAFF),
                              ],
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w))));
                  },
                ),
              ),
            )
          ],
        ));
  }
}
