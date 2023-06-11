// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'denomination_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DenominationListResponseModel _$DenominationListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DenominationListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DenominationListResponseModel {
  String get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DenominationListResponseModelCopyWith<DenominationListResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DenominationListResponseModelCopyWith<$Res> {
  factory $DenominationListResponseModelCopyWith(
          DenominationListResponseModel value,
          $Res Function(DenominationListResponseModel) then) =
      _$DenominationListResponseModelCopyWithImpl<$Res,
          DenominationListResponseModel>;
  @useResult
  $Res call(
      {String id,
      int count,
      double amount,
      String type,
      String title,
      String? detail});
}

/// @nodoc
class _$DenominationListResponseModelCopyWithImpl<$Res,
        $Val extends DenominationListResponseModel>
    implements $DenominationListResponseModelCopyWith<$Res> {
  _$DenominationListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? count = null,
    Object? amount = null,
    Object? type = null,
    Object? title = null,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DenominationListResponseModelCopyWith<$Res>
    implements $DenominationListResponseModelCopyWith<$Res> {
  factory _$$_DenominationListResponseModelCopyWith(
          _$_DenominationListResponseModel value,
          $Res Function(_$_DenominationListResponseModel) then) =
      __$$_DenominationListResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int count,
      double amount,
      String type,
      String title,
      String? detail});
}

/// @nodoc
class __$$_DenominationListResponseModelCopyWithImpl<$Res>
    extends _$DenominationListResponseModelCopyWithImpl<$Res,
        _$_DenominationListResponseModel>
    implements _$$_DenominationListResponseModelCopyWith<$Res> {
  __$$_DenominationListResponseModelCopyWithImpl(
      _$_DenominationListResponseModel _value,
      $Res Function(_$_DenominationListResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? count = null,
    Object? amount = null,
    Object? type = null,
    Object? title = null,
    Object? detail = freezed,
  }) {
    return _then(_$_DenominationListResponseModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_DenominationListResponseModel
    implements _DenominationListResponseModel {
  const _$_DenominationListResponseModel(
      {required this.id,
      required this.count,
      required this.amount,
      required this.type,
      required this.title,
      this.detail});

  factory _$_DenominationListResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_DenominationListResponseModelFromJson(json);

  @override
  final String id;
  @override
  final int count;
  @override
  final double amount;
  @override
  final String type;
  @override
  final String title;
  @override
  final String? detail;

  @override
  String toString() {
    return 'DenominationListResponseModel(id: $id, count: $count, amount: $amount, type: $type, title: $title, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DenominationListResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, count, amount, type, title, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DenominationListResponseModelCopyWith<_$_DenominationListResponseModel>
      get copyWith => __$$_DenominationListResponseModelCopyWithImpl<
          _$_DenominationListResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DenominationListResponseModelToJson(
      this,
    );
  }
}

abstract class _DenominationListResponseModel
    implements DenominationListResponseModel {
  const factory _DenominationListResponseModel(
      {required final String id,
      required final int count,
      required final double amount,
      required final String type,
      required final String title,
      final String? detail}) = _$_DenominationListResponseModel;

  factory _DenominationListResponseModel.fromJson(Map<String, dynamic> json) =
      _$_DenominationListResponseModel.fromJson;

  @override
  String get id;
  @override
  int get count;
  @override
  double get amount;
  @override
  String get type;
  @override
  String get title;
  @override
  String? get detail;
  @override
  @JsonKey(ignore: true)
  _$$_DenominationListResponseModelCopyWith<_$_DenominationListResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
