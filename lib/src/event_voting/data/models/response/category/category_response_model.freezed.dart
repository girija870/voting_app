// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryResponseModel _$CategoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponseModel {
  List<String> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResponseModelCopyWith<CategoryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseModelCopyWith<$Res> {
  factory $CategoryResponseModelCopyWith(CategoryResponseModel value,
          $Res Function(CategoryResponseModel) then) =
      _$CategoryResponseModelCopyWithImpl<$Res, CategoryResponseModel>;
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class _$CategoryResponseModelCopyWithImpl<$Res,
        $Val extends CategoryResponseModel>
    implements $CategoryResponseModelCopyWith<$Res> {
  _$CategoryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryResponseModelCopyWith<$Res>
    implements $CategoryResponseModelCopyWith<$Res> {
  factory _$$_CategoryResponseModelCopyWith(_$_CategoryResponseModel value,
          $Res Function(_$_CategoryResponseModel) then) =
      __$$_CategoryResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class __$$_CategoryResponseModelCopyWithImpl<$Res>
    extends _$CategoryResponseModelCopyWithImpl<$Res, _$_CategoryResponseModel>
    implements _$$_CategoryResponseModelCopyWith<$Res> {
  __$$_CategoryResponseModelCopyWithImpl(_$_CategoryResponseModel _value,
      $Res Function(_$_CategoryResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CategoryResponseModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryResponseModel implements _CategoryResponseModel {
  const _$_CategoryResponseModel({final List<String> data = const []})
      : _data = data;

  factory _$_CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryResponseModelFromJson(json);

  final List<String> _data;
  @override
  @JsonKey()
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CategoryResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryResponseModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryResponseModelCopyWith<_$_CategoryResponseModel> get copyWith =>
      __$$_CategoryResponseModelCopyWithImpl<_$_CategoryResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryResponseModelToJson(
      this,
    );
  }
}

abstract class _CategoryResponseModel implements CategoryResponseModel {
  const factory _CategoryResponseModel({final List<String> data}) =
      _$_CategoryResponseModel;

  factory _CategoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryResponseModel.fromJson;

  @override
  List<String> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryResponseModelCopyWith<_$_CategoryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
