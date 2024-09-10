import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:national_coach_app/Collection/dark_color_collection.dart';
import 'package:national_coach_app/Collection/light_color_collection.dart';

class ThemeController extends GetxController {
  // 테마를 다크 모드로 설정하는 변수
  final isDarkMode = Get.isDarkMode.obs;

  @override
  void onInit() {
    super.onInit();
    // 시스템 테마 변경 감지
    ever(isDarkMode, (_) => _setTheme());
  }

  // 테마 변경 함수
  void changeTheme(bool isDark) {
    isDarkMode.value = isDark;
  }

  // 테마 설정 함수
  void _setTheme() {
    Get.changeTheme(isDarkMode.value ? ThemeData.dark() : ThemeData.light());
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  // 현재 테마 상태 반환
  bool get isDark => isDarkMode.value;

  // 현재 테마에 따른 색상 컬렉션 반환
  dynamic get currentThemeColors =>
      isDark ? DarkColorsCollection() : LightColorsCollection();
}
