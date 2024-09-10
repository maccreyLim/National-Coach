import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:national_coach_app/Controller/theme_controller.dart';

class DoorScreen extends StatelessWidget {
  const DoorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();
    final _colors = themeController.currentThemeColors;
    return Scaffold(
        backgroundColor: themeController.currentThemeColors.mainBackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 60),
            // 상단 텍스트
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '전문성이 검증된 코치로부터',
                    style: TextStyle(
                      color: themeController.currentThemeColors.basicTextColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '제대로 된 레슨을 받으세요.',
                    style: TextStyle(
                      color: _colors.basicTextColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    '국대코치의 코치는 "대한체육회" 및 "경기단체"의 협조를 받아, '
                    '확인된 국가대표 현직/출신만이 가입 및 코치자격을 획득할 수 있습니다. '
                    '검증된 코치로부터 제대로 된 레슨을 받으세요.',
                    style: TextStyle(
                      color: _colors.supplementaryTextColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // 프로필 카드
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 400,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: _colors.secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              color: _colors.basicTextColor.withOpacity(0.7),
                              blurRadius: 10,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                                child: Image.network(
                                  'https://file2.nocutnews.co.kr/newsroom/image/2022/02/03/202202030947307114_0.jpg', // 코치 이미지를 적절히 교체하세요.
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '김연아 국대',
                                    style: TextStyle(
                                      color: _colors.basicTextColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '사이클 국가대표',
                                    style: TextStyle(
                                      color: _colors.supplementaryTextColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InfoTile(
                                          title: '15회',
                                          subtitle: '코칭',
                                          themeController: themeController),
                                      InfoTile(
                                          title: '52건',
                                          subtitle: '리뷰',
                                          themeController: themeController),
                                      InfoTile(
                                          title: '20년',
                                          subtitle: '총 경력',
                                          themeController: themeController),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // 하단 "다음" 버튼
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: _colors.primaryButtonColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  '다음',
                  style: TextStyle(
                      fontSize: 18, color: _colors.secondaryBackground),
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ));
  }
}

class InfoTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final ThemeController themeController;

  InfoTile({
    required this.title,
    required this.subtitle,
    required this.themeController,
  });

  @override
  Widget build(BuildContext context) {
    final _colors = themeController.currentThemeColors;
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: _colors.basicTextColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(
            color: _colors.supplementaryTextColor,
          ),
        ),
      ],
    );
  }
}
