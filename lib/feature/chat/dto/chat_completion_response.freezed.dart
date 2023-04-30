// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatCompletionResponse _$ChatCompletionResponseFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionResponse {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  List<ChatCompletionResponseChoice> get choices =>
      throw _privateConstructorUsedError;
  ChatCompletionResponseUsage get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionResponseCopyWith<ChatCompletionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionResponseCopyWith<$Res> {
  factory $ChatCompletionResponseCopyWith(ChatCompletionResponse value,
          $Res Function(ChatCompletionResponse) then) =
      _$ChatCompletionResponseCopyWithImpl<$Res, ChatCompletionResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      List<ChatCompletionResponseChoice> choices,
      ChatCompletionResponseUsage usage});

  $ChatCompletionResponseUsageCopyWith<$Res> get usage;
}

/// @nodoc
class _$ChatCompletionResponseCopyWithImpl<$Res,
        $Val extends ChatCompletionResponse>
    implements $ChatCompletionResponseCopyWith<$Res> {
  _$ChatCompletionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionResponseChoice>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseUsageCopyWith<$Res> get usage {
    return $ChatCompletionResponseUsageCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatCompletionResponseCopyWith<$Res>
    implements $ChatCompletionResponseCopyWith<$Res> {
  factory _$$_ChatCompletionResponseCopyWith(_$_ChatCompletionResponse value,
          $Res Function(_$_ChatCompletionResponse) then) =
      __$$_ChatCompletionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      List<ChatCompletionResponseChoice> choices,
      ChatCompletionResponseUsage usage});

  @override
  $ChatCompletionResponseUsageCopyWith<$Res> get usage;
}

/// @nodoc
class __$$_ChatCompletionResponseCopyWithImpl<$Res>
    extends _$ChatCompletionResponseCopyWithImpl<$Res,
        _$_ChatCompletionResponse>
    implements _$$_ChatCompletionResponseCopyWith<$Res> {
  __$$_ChatCompletionResponseCopyWithImpl(_$_ChatCompletionResponse _value,
      $Res Function(_$_ChatCompletionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_$_ChatCompletionResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChatCompletionResponseChoice>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseUsage,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChatCompletionResponse implements _ChatCompletionResponse {
  const _$_ChatCompletionResponse(
      {required this.id,
      required this.object,
      required this.created,
      required final List<ChatCompletionResponseChoice> choices,
      required this.usage})
      : _choices = choices;

  factory _$_ChatCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChatCompletionResponseFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  final int created;
  final List<ChatCompletionResponseChoice> _choices;
  @override
  List<ChatCompletionResponseChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final ChatCompletionResponseUsage usage;

  @override
  String toString() {
    return 'ChatCompletionResponse(id: $id, object: $object, created: $created, choices: $choices, usage: $usage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatCompletionResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created,
      const DeepCollectionEquality().hash(_choices), usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCompletionResponseCopyWith<_$_ChatCompletionResponse> get copyWith =>
      __$$_ChatCompletionResponseCopyWithImpl<_$_ChatCompletionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatCompletionResponseToJson(
      this,
    );
  }
}

abstract class _ChatCompletionResponse implements ChatCompletionResponse {
  const factory _ChatCompletionResponse(
          {required final String id,
          required final String object,
          required final int created,
          required final List<ChatCompletionResponseChoice> choices,
          required final ChatCompletionResponseUsage usage}) =
      _$_ChatCompletionResponse;

  factory _ChatCompletionResponse.fromJson(Map<String, dynamic> json) =
      _$_ChatCompletionResponse.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  int get created;
  @override
  List<ChatCompletionResponseChoice> get choices;
  @override
  ChatCompletionResponseUsage get usage;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCompletionResponseCopyWith<_$_ChatCompletionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatCompletionResponseChoice _$ChatCompletionResponseChoiceFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionResponseChoice.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionResponseChoice {
  int get index => throw _privateConstructorUsedError;
  ChatCompletionResponseChoiceMessage get message =>
      throw _privateConstructorUsedError;
  String get finishReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionResponseChoiceCopyWith<ChatCompletionResponseChoice>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionResponseChoiceCopyWith<$Res> {
  factory $ChatCompletionResponseChoiceCopyWith(
          ChatCompletionResponseChoice value,
          $Res Function(ChatCompletionResponseChoice) then) =
      _$ChatCompletionResponseChoiceCopyWithImpl<$Res,
          ChatCompletionResponseChoice>;
  @useResult
  $Res call(
      {int index,
      ChatCompletionResponseChoiceMessage message,
      String finishReason});

  $ChatCompletionResponseChoiceMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChatCompletionResponseChoiceCopyWithImpl<$Res,
        $Val extends ChatCompletionResponseChoice>
    implements $ChatCompletionResponseChoiceCopyWith<$Res> {
  _$ChatCompletionResponseChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseChoiceMessage,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatCompletionResponseChoiceMessageCopyWith<$Res> get message {
    return $ChatCompletionResponseChoiceMessageCopyWith<$Res>(_value.message,
        (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatCompletionResponseChoiceCopyWith<$Res>
    implements $ChatCompletionResponseChoiceCopyWith<$Res> {
  factory _$$_ChatCompletionResponseChoiceCopyWith(
          _$_ChatCompletionResponseChoice value,
          $Res Function(_$_ChatCompletionResponseChoice) then) =
      __$$_ChatCompletionResponseChoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      ChatCompletionResponseChoiceMessage message,
      String finishReason});

  @override
  $ChatCompletionResponseChoiceMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_ChatCompletionResponseChoiceCopyWithImpl<$Res>
    extends _$ChatCompletionResponseChoiceCopyWithImpl<$Res,
        _$_ChatCompletionResponseChoice>
    implements _$$_ChatCompletionResponseChoiceCopyWith<$Res> {
  __$$_ChatCompletionResponseChoiceCopyWithImpl(
      _$_ChatCompletionResponseChoice _value,
      $Res Function(_$_ChatCompletionResponseChoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = null,
  }) {
    return _then(_$_ChatCompletionResponseChoice(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatCompletionResponseChoiceMessage,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChatCompletionResponseChoice implements _ChatCompletionResponseChoice {
  const _$_ChatCompletionResponseChoice(
      {required this.index, required this.message, required this.finishReason});

  factory _$_ChatCompletionResponseChoice.fromJson(Map<String, dynamic> json) =>
      _$$_ChatCompletionResponseChoiceFromJson(json);

  @override
  final int index;
  @override
  final ChatCompletionResponseChoiceMessage message;
  @override
  final String finishReason;

  @override
  String toString() {
    return 'ChatCompletionResponseChoice(index: $index, message: $message, finishReason: $finishReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatCompletionResponseChoice &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finishReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCompletionResponseChoiceCopyWith<_$_ChatCompletionResponseChoice>
      get copyWith => __$$_ChatCompletionResponseChoiceCopyWithImpl<
          _$_ChatCompletionResponseChoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatCompletionResponseChoiceToJson(
      this,
    );
  }
}

abstract class _ChatCompletionResponseChoice
    implements ChatCompletionResponseChoice {
  const factory _ChatCompletionResponseChoice(
      {required final int index,
      required final ChatCompletionResponseChoiceMessage message,
      required final String finishReason}) = _$_ChatCompletionResponseChoice;

  factory _ChatCompletionResponseChoice.fromJson(Map<String, dynamic> json) =
      _$_ChatCompletionResponseChoice.fromJson;

  @override
  int get index;
  @override
  ChatCompletionResponseChoiceMessage get message;
  @override
  String get finishReason;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCompletionResponseChoiceCopyWith<_$_ChatCompletionResponseChoice>
      get copyWith => throw _privateConstructorUsedError;
}

ChatCompletionResponseChoiceMessage
    _$ChatCompletionResponseChoiceMessageFromJson(Map<String, dynamic> json) {
  return _ChatCompletionResponseChoiceMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionResponseChoiceMessage {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionResponseChoiceMessageCopyWith<
          ChatCompletionResponseChoiceMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionResponseChoiceMessageCopyWith<$Res> {
  factory $ChatCompletionResponseChoiceMessageCopyWith(
          ChatCompletionResponseChoiceMessage value,
          $Res Function(ChatCompletionResponseChoiceMessage) then) =
      _$ChatCompletionResponseChoiceMessageCopyWithImpl<$Res,
          ChatCompletionResponseChoiceMessage>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$ChatCompletionResponseChoiceMessageCopyWithImpl<$Res,
        $Val extends ChatCompletionResponseChoiceMessage>
    implements $ChatCompletionResponseChoiceMessageCopyWith<$Res> {
  _$ChatCompletionResponseChoiceMessageCopyWithImpl(this._value, this._then);

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
abstract class _$$_ChatCompletionResponseChoiceMessageCopyWith<$Res>
    implements $ChatCompletionResponseChoiceMessageCopyWith<$Res> {
  factory _$$_ChatCompletionResponseChoiceMessageCopyWith(
          _$_ChatCompletionResponseChoiceMessage value,
          $Res Function(_$_ChatCompletionResponseChoiceMessage) then) =
      __$$_ChatCompletionResponseChoiceMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$_ChatCompletionResponseChoiceMessageCopyWithImpl<$Res>
    extends _$ChatCompletionResponseChoiceMessageCopyWithImpl<$Res,
        _$_ChatCompletionResponseChoiceMessage>
    implements _$$_ChatCompletionResponseChoiceMessageCopyWith<$Res> {
  __$$_ChatCompletionResponseChoiceMessageCopyWithImpl(
      _$_ChatCompletionResponseChoiceMessage _value,
      $Res Function(_$_ChatCompletionResponseChoiceMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$_ChatCompletionResponseChoiceMessage(
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
class _$_ChatCompletionResponseChoiceMessage
    implements _ChatCompletionResponseChoiceMessage {
  const _$_ChatCompletionResponseChoiceMessage(
      {required this.role, required this.content});

  factory _$_ChatCompletionResponseChoiceMessage.fromJson(
          Map<String, dynamic> json) =>
      _$$_ChatCompletionResponseChoiceMessageFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'ChatCompletionResponseChoiceMessage(role: $role, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatCompletionResponseChoiceMessage &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCompletionResponseChoiceMessageCopyWith<
          _$_ChatCompletionResponseChoiceMessage>
      get copyWith => __$$_ChatCompletionResponseChoiceMessageCopyWithImpl<
          _$_ChatCompletionResponseChoiceMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatCompletionResponseChoiceMessageToJson(
      this,
    );
  }
}

abstract class _ChatCompletionResponseChoiceMessage
    implements ChatCompletionResponseChoiceMessage {
  const factory _ChatCompletionResponseChoiceMessage(
      {required final String role,
      required final String content}) = _$_ChatCompletionResponseChoiceMessage;

  factory _ChatCompletionResponseChoiceMessage.fromJson(
          Map<String, dynamic> json) =
      _$_ChatCompletionResponseChoiceMessage.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCompletionResponseChoiceMessageCopyWith<
          _$_ChatCompletionResponseChoiceMessage>
      get copyWith => throw _privateConstructorUsedError;
}

ChatCompletionResponseUsage _$ChatCompletionResponseUsageFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionResponseUsage.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionResponseUsage {
  int get promptTokens => throw _privateConstructorUsedError;
  int get completionTokens => throw _privateConstructorUsedError;
  int get totalTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionResponseUsageCopyWith<ChatCompletionResponseUsage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionResponseUsageCopyWith<$Res> {
  factory $ChatCompletionResponseUsageCopyWith(
          ChatCompletionResponseUsage value,
          $Res Function(ChatCompletionResponseUsage) then) =
      _$ChatCompletionResponseUsageCopyWithImpl<$Res,
          ChatCompletionResponseUsage>;
  @useResult
  $Res call({int promptTokens, int completionTokens, int totalTokens});
}

/// @nodoc
class _$ChatCompletionResponseUsageCopyWithImpl<$Res,
        $Val extends ChatCompletionResponseUsage>
    implements $ChatCompletionResponseUsageCopyWith<$Res> {
  _$ChatCompletionResponseUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = null,
    Object? completionTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_value.copyWith(
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatCompletionResponseUsageCopyWith<$Res>
    implements $ChatCompletionResponseUsageCopyWith<$Res> {
  factory _$$_ChatCompletionResponseUsageCopyWith(
          _$_ChatCompletionResponseUsage value,
          $Res Function(_$_ChatCompletionResponseUsage) then) =
      __$$_ChatCompletionResponseUsageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int promptTokens, int completionTokens, int totalTokens});
}

/// @nodoc
class __$$_ChatCompletionResponseUsageCopyWithImpl<$Res>
    extends _$ChatCompletionResponseUsageCopyWithImpl<$Res,
        _$_ChatCompletionResponseUsage>
    implements _$$_ChatCompletionResponseUsageCopyWith<$Res> {
  __$$_ChatCompletionResponseUsageCopyWithImpl(
      _$_ChatCompletionResponseUsage _value,
      $Res Function(_$_ChatCompletionResponseUsage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = null,
    Object? completionTokens = null,
    Object? totalTokens = null,
  }) {
    return _then(_$_ChatCompletionResponseUsage(
      promptTokens: null == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int,
      completionTokens: null == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokens: null == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChatCompletionResponseUsage implements _ChatCompletionResponseUsage {
  const _$_ChatCompletionResponseUsage(
      {required this.promptTokens,
      required this.completionTokens,
      required this.totalTokens});

  factory _$_ChatCompletionResponseUsage.fromJson(Map<String, dynamic> json) =>
      _$$_ChatCompletionResponseUsageFromJson(json);

  @override
  final int promptTokens;
  @override
  final int completionTokens;
  @override
  final int totalTokens;

  @override
  String toString() {
    return 'ChatCompletionResponseUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatCompletionResponseUsage &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, promptTokens, completionTokens, totalTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCompletionResponseUsageCopyWith<_$_ChatCompletionResponseUsage>
      get copyWith => __$$_ChatCompletionResponseUsageCopyWithImpl<
          _$_ChatCompletionResponseUsage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatCompletionResponseUsageToJson(
      this,
    );
  }
}

abstract class _ChatCompletionResponseUsage
    implements ChatCompletionResponseUsage {
  const factory _ChatCompletionResponseUsage(
      {required final int promptTokens,
      required final int completionTokens,
      required final int totalTokens}) = _$_ChatCompletionResponseUsage;

  factory _ChatCompletionResponseUsage.fromJson(Map<String, dynamic> json) =
      _$_ChatCompletionResponseUsage.fromJson;

  @override
  int get promptTokens;
  @override
  int get completionTokens;
  @override
  int get totalTokens;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCompletionResponseUsageCopyWith<_$_ChatCompletionResponseUsage>
      get copyWith => throw _privateConstructorUsedError;
}
