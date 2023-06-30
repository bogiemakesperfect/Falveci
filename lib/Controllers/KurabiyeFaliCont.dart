import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shake/shake.dart';
import 'package:tartarus/Views/Home/AllFal/Fallar/Ask%20Uyumu/AskUyumuView.dart';

class KurabiyefaliController extends GetxController {
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        isLoading.value = true;
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 2.7,
    );
  }
}
