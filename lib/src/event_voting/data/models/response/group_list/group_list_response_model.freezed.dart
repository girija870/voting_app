// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupListResponseModel _$GroupListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GroupListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GroupListResponseModel {
  List<GroupListData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupListResponseModelCopyWith<GroupListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupListResponseModelCopyWith<$Res> {
  factory $GroupListResponseModelCopyWith(GroupListResponseModel value,
          $Res Function(GroupListResponseModel) then) =
      _$GroupListResponseModelCopyWithImpl<$Res, GroupListResponseModel>;
  @useResult
  $Res call({List<GroupListData> data});
}

/// @nodoc
class _$GroupListResponseModelCopyWithImpl<$Res,
        $Val extends GroupListResponseModel>
    implements $GroupListResponseModelCopyWith<$Res> {
  _$GroupListResponseModelCopyWithImpl(this._value, this._then);

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
              as List<GroupListData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupListResponseModelCopyWith<$Res>
    implements $GroupListResponseModelCopyWith<$Res> {
  factory _$$_GroupListResponseModelCopyWith(_$_GroupListResponseModel value,
          $Res Function(_$_GroupListResponseModel) then) =
      __$$_GroupListResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GroupListData> data});
}

/// @nodoc
class __$$_GroupListResponseModelCopyWithImpl<$Res>
    extends _$GroupListResponseModelCopyWithImpl<$Res,
        _$_GroupListResponseModel>
    implements _$$_GroupListResponseModelCopyWith<$Res> {
  __$$_GroupListResponseModelCopyWithImpl(_$_GroupListResponseModel _value,
      $Res Function(_$_GroupListResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GroupListResponseModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GroupListData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupListResponseModel implements _GroupListResponseModel {
  const _$_GroupListResponseModel({final List<GroupListData> data = const []})
      : _data = data;

  factory _$_GroupListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_GroupListResponseModelFromJson(json);

  final List<GroupListData> _data;
  @override
  @JsonKey()
  List<GroupListData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GroupListResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupListResponseModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupListResponseModelCopyWith<_$_GroupListResponseModel> get copyWith =>
      __$$_GroupListResponseModelCopyWithImpl<_$_GroupListResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupListResponseModelToJson(
      this,
    );
  }
}

abstract class _GroupListResponseModel implements GroupListResponseModel {
  const factory _GroupListResponseModel({final List<GroupListData> data}) =
      _$_GroupListResponseModel;

  factory _GroupListResponseModel.fromJson(Map<String, dynamic> json) =
      _$_GroupListResponseModel.fromJson;

  @override
  List<GroupListData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GroupListResponseModelCopyWith<_$_GroupListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupListData _$GroupListDataFromJson(Map<String, dynamic> json) {
  return _GroupListData.fromJson(json);
}

/// @nodoc
mixin _$GroupListData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Participants> get participants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupListDataCopyWith<GroupListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupListDataCopyWith<$Res> {
  factory $GroupListDataCopyWith(
          GroupListData value, $Res Function(GroupListData) then) =
      _$GroupListDataCopyWithImpl<$Res, GroupListData>;
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String? description,
      List<Participants> participants});
}

/// @nodoc
class _$GroupListDataCopyWithImpl<$Res, $Val extends GroupListData>
    implements $GroupListDataCopyWith<$Res> {
  _$GroupListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = freezed,
    Object? participants = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participants>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupListDataCopyWith<$Res>
    implements $GroupListDataCopyWith<$Res> {
  factory _$$_GroupListDataCopyWith(
          _$_GroupListData value, $Res Function(_$_GroupListData) then) =
      __$$_GroupListDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String? description,
      List<Participants> participants});
}

/// @nodoc
class __$$_GroupListDataCopyWithImpl<$Res>
    extends _$GroupListDataCopyWithImpl<$Res, _$_GroupListData>
    implements _$$_GroupListDataCopyWith<$Res> {
  __$$_GroupListDataCopyWithImpl(
      _$_GroupListData _value, $Res Function(_$_GroupListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = freezed,
    Object? participants = null,
  }) {
    return _then(_$_GroupListData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participants>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupListData implements _GroupListData {
  const _$_GroupListData(
      {required this.id,
      required this.name,
      required this.image,
      this.description,
      final List<Participants> participants = const []})
      : _participants = participants;

  factory _$_GroupListData.fromJson(Map<String, dynamic> json) =>
      _$$_GroupListDataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String? description;
  final List<Participants> _participants;
  @override
  @JsonKey()
  List<Participants> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'GroupListData(id: $id, name: $name, image: $image, description: $description, participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupListData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, description,
      const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupListDataCopyWith<_$_GroupListData> get copyWith =>
      __$$_GroupListDataCopyWithImpl<_$_GroupListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupListDataToJson(
      this,
    );
  }
}

abstract class _GroupListData implements GroupListData {
  const factory _GroupListData(
      {required final String id,
      required final String name,
      required final String image,
      final String? description,
      final List<Participants> participants}) = _$_GroupListData;

  factory _GroupListData.fromJson(Map<String, dynamic> json) =
      _$_GroupListData.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String? get description;
  @override
  List<Participants> get participants;
  @override
  @JsonKey(ignore: true)
  _$$_GroupListDataCopyWith<_$_GroupListData> get copyWith =>
      throw _privateConstructorUsedError;
}
