import 'package:flutter/material.dart';

class UserModel {
  final String name; // 성명
  final String email; // 이메일
  final String phoneNumber; // 휴대전화번호
  final String password; // 비밀번호 (보안 상 저장하지 않는 것을 권장)
  final String nationality; // 국적
  final DateTime dateOfBirth; // 생년월일
  final String interestRegion; // 관심지역
  final bool hasExerciseExperience; // 운동경력 (y/n)
  final int exerciseDuration; // 운동경력 기간 (개월 또는 년 단위)
  final String sport; // 운동 종목
  final int weeklyExerciseFrequency; // 주별 운동 횟수
  final List<String> interests; // 관심 종목 리스트
  final String gender; // 성별
  final double height; // 키 (cm)
  final double weight; // 몸무게 (kg)
  final double averageSleepHours; // 평균 수면 시간 (시간 단위)
  final String underlyingConditions; // 기저질환
  final String preferredLessonType; // 선호 레슨 형태
  final List<String> preferredLessonDays; // 선호 레슨 요일 리스트
  final TimeOfDay preferredLessonStartTime; // 선호 레슨 시작 시간
  final TimeOfDay preferredLessonEndTime; // 선호 레슨 마감 시간
  final String additionalNotes; // 기타 사항

  UserModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.nationality,
    required this.dateOfBirth,
    required this.interestRegion,
    required this.hasExerciseExperience,
    required this.exerciseDuration,
    required this.sport,
    required this.weeklyExerciseFrequency,
    required this.interests,
    required this.gender,
    required this.height,
    required this.weight,
    required this.averageSleepHours,
    required this.underlyingConditions,
    required this.preferredLessonType,
    required this.preferredLessonDays,
    required this.preferredLessonStartTime,
    required this.preferredLessonEndTime,
    required this.additionalNotes,
  });

  // Firebase Firestore로 데이터를 저장하기 위한 메서드
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone_number': phoneNumber,
      // 비밀번호는 Firestore에 저장하지 않거나 암호화하여 저장
      'nationality': nationality,
      'date_of_birth': dateOfBirth.toIso8601String(),
      'interest_region': interestRegion,
      'has_exercise_experience': hasExerciseExperience,
      'exercise_duration': exerciseDuration,
      'sport': sport,
      'weekly_exercise_frequency': weeklyExerciseFrequency,
      'interests': interests,
      'gender': gender,
      'height': height,
      'weight': weight,
      'average_sleep_hours': averageSleepHours,
      'underlying_conditions': underlyingConditions,
      'preferred_lesson_type': preferredLessonType,
      'preferred_lesson_days': preferredLessonDays,
      'preferred_lesson_start_hour': preferredLessonStartTime.hour,
      'preferred_lesson_start_minute': preferredLessonStartTime.minute,
      'preferred_lesson_end_hour': preferredLessonEndTime.hour,
      'preferred_lesson_end_minute': preferredLessonEndTime.minute,
      'additional_notes': additionalNotes,
    };
  }

  // Firestore에서 데이터를 가져올 때 사용하는 메서드
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
      phoneNumber: map['phone_number'],
      password: '', // 비밀번호는 직접 가져오지 않음
      nationality: map['nationality'],
      dateOfBirth: DateTime.parse(map['date_of_birth']),
      interestRegion: map['interest_region'],
      hasExerciseExperience: map['has_exercise_experience'],
      exerciseDuration: map['exercise_duration'],
      sport: map['sport'],
      weeklyExerciseFrequency: map['weekly_exercise_frequency'],
      interests: List<String>.from(map['interests']),
      gender: map['gender'],
      height: map['height'].toDouble(),
      weight: map['weight'].toDouble(),
      averageSleepHours: map['average_sleep_hours'].toDouble(),
      underlyingConditions: map['underlying_conditions'],
      preferredLessonType: map['preferred_lesson_type'],
      preferredLessonDays: List<String>.from(map['preferred_lesson_days']),
      preferredLessonStartTime: TimeOfDay(
        hour: map['preferred_lesson_start_hour'],
        minute: map['preferred_lesson_start_minute'],
      ),
      preferredLessonEndTime: TimeOfDay(
        hour: map['preferred_lesson_end_hour'],
        minute: map['preferred_lesson_end_minute'],
      ),
      additionalNotes: map['additional_notes'],
    );
  }
}
