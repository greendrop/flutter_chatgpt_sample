// Mocks generated by Mockito 5.4.0 from annotations
// in flutter_chatgpt_sample/test/feature/theme_setting/widget/theme_setting_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter/material.dart' as _i5;
import 'package:flutter_chatgpt_sample/feature/theme_setting/repository/theme_mode_repository.dart'
    as _i3;
import 'package:hooks_riverpod/hooks_riverpod.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRef_0<State extends Object?> extends _i1.SmartFake
    implements _i2.Ref<State> {
  _FakeRef_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ThemeModeRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockThemeModeRepository extends _i1.Mock
    implements _i3.ThemeModeRepository {
  @override
  _i2.Ref<Object?> get ref => (super.noSuchMethod(
        Invocation.getter(#ref),
        returnValue: _FakeRef_0<Object?>(
          this,
          Invocation.getter(#ref),
        ),
        returnValueForMissingStub: _FakeRef_0<Object?>(
          this,
          Invocation.getter(#ref),
        ),
      ) as _i2.Ref<Object?>);
  @override
  _i4.Future<_i5.ThemeMode> fetch() => (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [],
        ),
        returnValue: _i4.Future<_i5.ThemeMode>.value(_i5.ThemeMode.system),
        returnValueForMissingStub:
            _i4.Future<_i5.ThemeMode>.value(_i5.ThemeMode.system),
      ) as _i4.Future<_i5.ThemeMode>);
  @override
  _i4.Future<void> update(_i5.ThemeMode? themeMode) => (super.noSuchMethod(
        Invocation.method(
          #update,
          [themeMode],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
