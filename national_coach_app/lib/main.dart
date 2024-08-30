import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:national_coach_app/Controller/theme_controller.dart';
import 'package:national_coach_app/Screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // ThemeController 인스턴스를 생성하여 사용합니다.
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
        // 테마가 변경될 때마다 Obx가 반응하여 UI를 업데이트 합니다.
        () => GetMaterialApp(
              title: 'Flutter Demo',
              theme: themeController.isDarkMode.value
                  ? ThemeData.dark()
                  : ThemeData.light(),
              home: const HomeScreen(),
            ));
  }
}
