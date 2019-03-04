import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:class_builder/class_builder.dart';

class ClassBuilderTest {}

void main() {
  test('check if instance from string is a correct type', () {
    ClassBuilder.register<ClassBuilderTest>(() => ClassBuilderTest());
    var instance = ClassBuilder.fromString('ClassBuilderTest');
    expect(TypeMatcher<ClassBuilderTest>().check(instance), true);
  });
}
