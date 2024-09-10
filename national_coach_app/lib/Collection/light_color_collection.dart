import 'package:flutter/material.dart';

class LightColorsCollection {
  static final LightColorsCollection _instance =
      LightColorsCollection._internal();

  factory LightColorsCollection() {
    return _instance;
  }

  LightColorsCollection._internal();

  // 메인 배경 색상
  Color get mainBackground => const Color(0xFFF5F5F5); // 연한 회색

  // 보조 배경 색상
  Color get secondaryBackground => Colors.white; // 흰색

  // 기본 텍스트 색상
  Color get basicTextColor => const Color(0xFF333333); // 어두운 회색

  // 보조 텍스트 색상
  Color get supplementaryTextColor => const Color(0xFF666666); // 중간 회색

  // 주요 액션 버튼 색상
  Color get primaryButtonColor => const Color(0xFF0052CC); // 코발트 블루
  // 설명: 코발트 블루는 신뢰감을 주며, 사용자의 주의를 끌기 좋은 색상이다. 회원가입, 로그인, 코칭 요청 등의 주요 액션 버튼에 사용하면 좋음.

  // 보조 액션 버튼 색상
  Color get secondaryButtonColor => const Color(0xFF007AFF); // 라이트 블루
  // 설명: 주요 액션 버튼보다 덜 중요한 버튼이나 링크에 사용하면 좋아. 깔끔하면서도 강조하고 싶은 부분에 적합함.

  // 강조 색상
  Color get highlightColor => const Color(0xFFFF4500); // 선셋 오렌지
  // 설명: 주의를 끌고 싶은 중요한 정보나 알림에 사용하는 색상. 에너지와 활력을 주는 색상이어서, 운동 관련 성과를 보여주거나 중요한 메시지에 사용하기 좋음.

  // 성공 메시지 색상
  Color get successColor => const Color(0xFF32CD32); // 라임 그린
  // 설명: 긍정적인 피드백이나 성공 알림, 완료된 작업을 나타낼 때 사용.

  // 에러 색상
  Color get errorColor => const Color(0xFFD32F2F); // 딥 레드
  // 설명: 오류 메시지나 주의가 필요한 상황에 사용. 강렬한 색상이어서 사용자에게 즉각적인 인식을 줄 수 있음.

  // 경고 색상
  Color get warningColor => const Color(0xFFFFC107); // 골드 옐로우
  // 설명: 경고 메시지나 주의 사항에 사용. 따뜻한 느낌이 들면서도 경고의 의미를 전달할 수 있어.
}
