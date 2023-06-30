import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tartarus/Views/Home/HomeView.dart';
import 'package:tartarus/Views/Login/Registration/ViewResultView.dart';

class LoadingScreenController extends GetxController {
  onInit() {
    super.onInit();
    Timer(Duration(seconds:5), () {
      Get.offAll(() => HomeView(),
          transition: Transition.rightToLeft,
          duration: Duration(milliseconds: 500));
    });
  }
}
