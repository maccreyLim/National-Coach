import 'package:flutter/material.dart';

class DarkColorsCollection {
  static final DarkColorsCollection _instance =
      DarkColorsCollection._internal();

  factory DarkColorsCollection() {
    return _instance;
  }

  DarkColorsCollection._internal();

  // 메인 배경 색상
  Color get mainBackground => Color(0xFF121212); // 다크 네이비

  // 보조 배경 색상
  Color get secondaryBackground => Color(0xFF1E1E1E); // 차콜 그레이

  // 기본 텍스트 색상
  Color get basicTextColor => Color(0xFFE0E0E0); // 라이트 그레이

  // 보조 텍스트 색상
  Color get supplementaryTextColor => Color(0xFFB0B0B0); // 미디엄 그레이

  // 주요 액션 버튼 색상
  Color get primaryButtonColor => Color(0xFF1A73E8); // 코발트 블루
  // 설명: 다크 모드에서 코발트 블루는 눈에 잘 띄면서도 시원한 느낌을 줌. 주요 액션 버튼에 사용하면 좋음.

  // 보조 액션 버튼 색상
  Color get secondaryButtonColor => Color(0xFF4FC3F7); // 라이트 블루
  // 설명: 덜 중요한 액션이나 링크에 사용. 다크 모드에서 잘 보이는 밝은 블루 톤으로, 깔끔하고 시원한 인상을 줌.

  // 강조 색상
  Color get highlightColor => Color(0xFFFF7043); // 선셋 오렌지
  // 설명: 어두운 배경에서 주의를 끌기 좋은 따뜻한 오렌지 색상. 중요한 정보나 알림에 사용하면 좋음.

  // 성공 메시지 색상
  Color get successColor => Color(0xFF76FF03); // 라임 그린
  // 설명: 긍정적인 피드백이나 완료된 작업을 나타낼 때 사용. 어두운 배경에서 생동감 있게 잘 보임.

  // 에러 색상
  Color get errorColor => Color(0xFFFF5252); // 브라이트 레드
  // 설명: 오류 메시지나 주의가 필요한 상황에 사용하는 색상. 어두운 배경에서 경고의 의미를 확실히 전달할 수 있음.

  // 경고 색상
  Color get warningColor => Color(0xFFFFD740); // 앰버
  // 설명: 경고 메시지나 주의 사항에 사용. 밝은 노란색이 어두운 배경에서 눈에 잘 띄며, 따뜻한 느낌을 줌.
}
