import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ThemeController extends GetxController {
  // 테마를 다크 모드로 설정하는 변수
  var isDarkMode = false.obs;

  // 테마 변경 함수
  void changeTheme(bool isDark) {
    isDarkMode.value = isDark;
    Get.changeTheme(isDark ? ThemeData.dark() : ThemeData.light());
  }
}
