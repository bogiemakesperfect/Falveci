import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginOneViewController extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;
  Rx<DateTime> selectedTime = DateTime.now().obs;
  RxInt CityValue = 0.obs;
  RxDouble progressValue = 10.0.obs;
  RxDouble progressMaxValue = 90.0.obs;
  RxInt currentPage = 0.obs;
  RxString selectedGender = "Female".obs;

  String changeGender(String value) {
    selectedGender.value = value;
    return selectedGender.value;
  }

  int changeCitySelected(int index) {
    CityValue.value = index;

    return CityValue.value;
  }

  void incrementProgressValue() {
    progressValue.value = progressValue.value + 12;
  }

  void decrementProgressValue() {
    progressValue.value = progressValue.value - 12;
  }

  void incrementCurrentPage() {
    currentPage.value = currentPage.value + 1;
  }

  void decrementCurrentPage() {
    currentPage.value = currentPage.value - 1;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
