// Mocks generated by Mockito 5.4.0 from annotations
// in flutter_chatgpt_sample/test/feature/chat/widget/chat_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_request.dart'
    as _i6;
import 'package:flutter_chatgpt_sample/feature/chat/dto/chat_completion_response.dart'
    as _i3;
import 'package:flutter_chatgpt_sample/feature/chat/repository/chat_completion_repository.dart'
    as _i4;
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

class _FakeChatCompletionResponse_1 extends _i1.SmartFake
    implements _i3.ChatCompletionResponse {
  _FakeChatCompletionResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ChatCompletionRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockChatCompletionRepository extends _i1.Mock
    implements _i4.ChatCompletionRepository {
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
  _i5.Future<_i3.ChatCompletionResponse> post(
          _i6.ChatCompletionRequest? data) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [data],
        ),
        returnValue: _i5.Future<_i3.ChatCompletionResponse>.value(
            _FakeChatCompletionResponse_1(
          this,
          Invocation.method(
            #post,
            [data],
          ),
        )),
        returnValueForMissingStub: _i5.Future<_i3.ChatCompletionResponse>.value(
            _FakeChatCompletionResponse_1(
          this,
          Invocation.method(
            #post,
            [data],
          ),
        )),
      ) as _i5.Future<_i3.ChatCompletionResponse>);
}
