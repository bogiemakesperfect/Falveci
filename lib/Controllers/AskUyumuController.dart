import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AskUyumuCon extends GetxController {
  RxInt selected = 0.obs;
  RxInt selected2 = 0.obs;
  RxBool isSwitched = false.obs;
  PageController pageController = PageController();

  

  

  void changeSelected(int index) {
    selected.value = index;    
  }

  void changeSelected2(int index) {
    selected2.value = index;    
  }

 
}