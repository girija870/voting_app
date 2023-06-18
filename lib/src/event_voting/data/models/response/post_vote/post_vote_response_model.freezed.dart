// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_vote_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostVoteResponseModel _$PostVoteResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PostVoteResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PostVoteResponseModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostVoteResponseModelCopyWith<PostVoteResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostVoteResponseModelCopyWith<$Res> {
  factory $PostVoteResponseModelCopyWith(PostVoteResponseModel value,
          $Res Function(PostVoteResponseModel) then) =
      _$PostVoteResponseModelCopyWithImpl<$Res, PostVoteResponseModel>;
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class _$PostVoteResponseModelCopyWithImpl<$Res,
        $Val extends PostVoteResponseModel>
    implements $PostVoteResponseModelCopyWith<$Res> {
  _$PostVoteResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostVoteResponseModelCopyWith<$Res>
    implements $PostVoteResponseModelCopyWith<$Res> {
  factory _$$_PostVoteResponseModelCopyWith(_$_PostVoteResponseModel value,
          $Res Function(_$_PostVoteResponseModel) then) =
      __$$_PostVoteResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class __$$_PostVoteResponseModelCopyWithImpl<$Res>
    extends _$PostVoteResponseModelCopyWithImpl<$Res, _$_PostVoteResponseModel>
    implements _$$_PostVoteResponseModelCopyWith<$Res> {
  __$$_PostVoteResponseModelCopyWithImpl(_$_PostVoteResponseModel _value,
      $Res Function(_$_PostVoteResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_$_PostVoteResponseModel(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_PostVoteResponseModel implements _PostVoteResponseModel {
  const _$_PostVoteResponseModel(
      {required this.success, required this.message});

  factory _$_PostVoteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostVoteResponseModelFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'PostVoteResponseModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostVoteResponseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostVoteResponseModelCopyWith<_$_PostVoteResponseModel> get copyWith =>
      __$$_PostVoteResponseModelCopyWithImpl<_$_PostVoteResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostVoteResponseModelToJson(
      this,
    );
  }
}

abstract class _PostVoteResponseModel implements PostVoteResponseModel {
  const factory _PostVoteResponseModel(
      {required final bool success,
      required final String message}) = _$_PostVoteResponseModel;

  factory _PostVoteResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PostVoteResponseModel.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_PostVoteResponseModelCopyWith<_$_PostVoteResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
