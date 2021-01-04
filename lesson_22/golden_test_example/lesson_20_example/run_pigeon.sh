#!/bin/bash

flutter pub run pigeon \
  --input lib/pigeon/multiply.dart \
  --dart_out lib/pigeon/multiply.pigeon.dart \
  --objc_header_out ios/Classes/pigeon.h \
  --objc_source_out ios/Classes/pigeon.m \
  --java_out android/src/main/java/com/example/lesson_20_example/Pigeon.java \
  --java_package "com.example.lesson_20_example"