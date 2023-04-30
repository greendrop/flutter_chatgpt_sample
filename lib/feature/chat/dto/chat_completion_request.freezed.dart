// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatCompletionRequest _$ChatCompletionRequestFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionRequest {
  String get model => throw _privateConstructorUsedError;
  List<ChatCompletionRequestMessage> get messages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionRequestCopyWith<ChatCompletionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionRequestCopyWith<$Res> {
  factory $ChatCompletionRequestCopyWith(ChatCompletionRequest value,
          $Res Function(ChatCompletionRequest) then) =
      _$ChatCompletionRequestCopyWithImpl<$Res, ChatCompletionRequest>;
  @useResult
  $Res call({String model, List<ChatCompletionRequestMessage> messages});
}

/// @nodoc
class _$ChatCompletionRequestCopyWithImpl<$Res,
        $Val extends ChatCompletionRequest>
    implements $ChatCompletionRequestCopyWith<$Res> {
  _$ChatCompletionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionRequestMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatCompletionRequestCopyWith<$Res>
    implements $ChatCompletionRequestCopyWith<$Res> {
  factory _$$_ChatCompletionRequestCopyWith(_$_ChatCompletionRequest value,
          $Res Function(_$_ChatCompletionRequest) then) =
      __$$_ChatCompletionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String model, List<ChatCompletionRequestMessage> messages});
}

/// @nodoc
class __$$_ChatCompletionRequestCopyWithImpl<$Res>
    extends _$ChatCompletionRequestCopyWithImpl<$Res, _$_ChatCompletionRequest>
    implements _$$_ChatCompletionRequestCopyWith<$Res> {
  __$$_ChatCompletionRequestCopyWithImpl(_$_ChatCompletionRequest _value,
      $Res Function(_$_ChatCompletionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
  }) {
    return _then(_$_ChatCompletionRequest(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionRequestMessage>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChatCompletionRequest implements _ChatCompletionRequest {
  const _$_ChatCompletionRequest(
      {required this.model,
      required final List<ChatCompletionRequestMessage> messages})
      : _messages = messages;

  factory _$_ChatCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ChatCompletionRequestFromJson(json);

  @override
  final String model;
  final List<ChatCompletionRequestMessage> _messages;
  @override
  List<ChatCompletionRequestMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatCompletionRequest(model: $model, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatCompletionRequest &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, model, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCompletionRequestCopyWith<_$_ChatCompletionRequest> get copyWith =>
      __$$_ChatCompletionRequestCopyWithImpl<_$_ChatCompletionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatCompletionRequestToJson(
      this,
    );
  }
}

abstract class _ChatCompletionRequest implements ChatCompletionRequest {
  const factory _ChatCompletionRequest(
          {required final String model,
          required final List<ChatCompletionRequestMessage> messages}) =
      _$_ChatCompletionRequest;

  factory _ChatCompletionRequest.fromJson(Map<String, dynamic> json) =
      _$_ChatCompletionRequest.fromJson;

  @override
  String get model;
  @override
  List<ChatCompletionRequestMessage> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCompletionRequestCopyWith<_$_ChatCompletionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatCompletionRequestMessage _$ChatCompletionRequestMessageFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionRequestMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionRequestMessage {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionRequestMessageCopyWith<ChatCompletionRequestMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionRequestMessageCopyWith<$Res> {
  factory $ChatCompletionRequestMessageCopyWith(
          ChatCompletionRequestMessage value,
          $Res Function(ChatCompletionRequestMessage) then) =
      _$ChatCompletionRequestMessageCopyWithImpl<$Res,
          ChatCompletionRequestMessage>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$ChatCompletionRequestMessageCopyWithImpl<$Res,
        $Val extends ChatCompletionRequestMessage>
    implements $ChatCompletionRequestMessageCopyWith<$Res> {
  _$ChatCompletionRequestMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatCompletionRequestMessageCopyWith<$Res>
    implements $ChatCompletionRequestMessageCopyWith<$Res> {
  factory _$$_ChatCompletionRequestMessageCopyWith(
          _$_ChatCompletionRequestMessage value,
          $Res Function(_$_ChatCompletionRequestMessage) then) =
      __$$_ChatCompletionRequestMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$_ChatCompletionRequestMessageCopyWithImpl<$Res>
    extends _$ChatCompletionRequestMessageCopyWithImpl<$Res,
        _$_ChatCompletionRequestMessage>
    implements _$$_ChatCompletionRequestMessageCopyWith<$Res> {
  __$$_ChatCompletionRequestMessageCopyWithImpl(
      _$_ChatCompletionRequestMessage _value,
      $Res Function(_$_ChatCompletionRequestMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$_ChatCompletionRequestMessage(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChatCompletionRequestMessage implements _ChatCompletionRequestMessage {
  const _$_ChatCompletionRequestMessage(
      {required this.role, required this.content});

  factory _$_ChatCompletionRequestMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ChatCompletionRequestMessageFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'ChatCompletionRequestMessage(role: $role, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatCompletionRequestMessage &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCompletionRequestMessageCopyWith<_$_ChatCompletionRequestMessage>
      get copyWith => __$$_ChatCompletionRequestMessageCopyWithImpl<
          _$_ChatCompletionRequestMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatCompletionRequestMessageToJson(
      this,
    );
  }
}

abstract class _ChatCompletionRequestMessage
    implements ChatCompletionRequestMessage {
  const factory _ChatCompletionRequestMessage(
      {required final String role,
      required final String content}) = _$_ChatCompletionRequestMessage;

  factory _ChatCompletionRequestMessage.fromJson(Map<String, dynamic> json) =
      _$_ChatCompletionRequestMessage.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCompletionRequestMessageCopyWith<_$_ChatCompletionRequestMessage>
      get copyWith => throw _privateConstructorUsedError;
}
