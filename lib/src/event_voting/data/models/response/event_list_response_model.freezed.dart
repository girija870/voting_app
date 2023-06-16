// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventListResponseModel _$EventListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _EventListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EventListResponseModel {
  List<EventListData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventListResponseModelCopyWith<EventListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListResponseModelCopyWith<$Res> {
  factory $EventListResponseModelCopyWith(EventListResponseModel value,
          $Res Function(EventListResponseModel) then) =
      _$EventListResponseModelCopyWithImpl<$Res, EventListResponseModel>;
  @useResult
  $Res call({List<EventListData> data});
}

/// @nodoc
class _$EventListResponseModelCopyWithImpl<$Res,
        $Val extends EventListResponseModel>
    implements $EventListResponseModelCopyWith<$Res> {
  _$EventListResponseModelCopyWithImpl(this._value, this._then);

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
              as List<EventListData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventListResponseModelCopyWith<$Res>
    implements $EventListResponseModelCopyWith<$Res> {
  factory _$$_EventListResponseModelCopyWith(_$_EventListResponseModel value,
          $Res Function(_$_EventListResponseModel) then) =
      __$$_EventListResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventListData> data});
}

/// @nodoc
class __$$_EventListResponseModelCopyWithImpl<$Res>
    extends _$EventListResponseModelCopyWithImpl<$Res,
        _$_EventListResponseModel>
    implements _$$_EventListResponseModelCopyWith<$Res> {
  __$$_EventListResponseModelCopyWithImpl(_$_EventListResponseModel _value,
      $Res Function(_$_EventListResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_EventListResponseModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EventListData>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_EventListResponseModel implements _EventListResponseModel {
  const _$_EventListResponseModel({final List<EventListData> data = const []})
      : _data = data;

  factory _$_EventListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventListResponseModelFromJson(json);

  final List<EventListData> _data;
  @override
  @JsonKey()
  List<EventListData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EventListResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventListResponseModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventListResponseModelCopyWith<_$_EventListResponseModel> get copyWith =>
      __$$_EventListResponseModelCopyWithImpl<_$_EventListResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventListResponseModelToJson(
      this,
    );
  }
}

abstract class _EventListResponseModel implements EventListResponseModel {
  const factory _EventListResponseModel({final List<EventListData> data}) =
      _$_EventListResponseModel;

  factory _EventListResponseModel.fromJson(Map<String, dynamic> json) =
      _$_EventListResponseModel.fromJson;

  @override
  List<EventListData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_EventListResponseModelCopyWith<_$_EventListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

EventListData _$EventListDataFromJson(Map<String, dynamic> json) {
  return _EventListData.fromJson(json);
}

/// @nodoc
mixin _$EventListData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  String? get endDate => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get setting => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<Participants> get participants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventListDataCopyWith<EventListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListDataCopyWith<$Res> {
  factory $EventListDataCopyWith(
          EventListData value, $Res Function(EventListData) then) =
      _$EventListDataCopyWithImpl<$Res, EventListData>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? location,
      @JsonKey(name: 'startDate') String? startDate,
      @JsonKey(name: 'endDate') String? endDate,
      String image,
      String? description,
      String? type,
      String? setting,
      double? price,
      String? status,
      List<Participants> participants});
}

/// @nodoc
class _$EventListDataCopyWithImpl<$Res, $Val extends EventListData>
    implements $EventListDataCopyWith<$Res> {
  _$EventListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? image = null,
    Object? description = freezed,
    Object? type = freezed,
    Object? setting = freezed,
    Object? price = freezed,
    Object? status = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participants>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventListDataCopyWith<$Res>
    implements $EventListDataCopyWith<$Res> {
  factory _$$_EventListDataCopyWith(
          _$_EventListData value, $Res Function(_$_EventListData) then) =
      __$$_EventListDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? location,
      @JsonKey(name: 'startDate') String? startDate,
      @JsonKey(name: 'endDate') String? endDate,
      String image,
      String? description,
      String? type,
      String? setting,
      double? price,
      String? status,
      List<Participants> participants});
}

/// @nodoc
class __$$_EventListDataCopyWithImpl<$Res>
    extends _$EventListDataCopyWithImpl<$Res, _$_EventListData>
    implements _$$_EventListDataCopyWith<$Res> {
  __$$_EventListDataCopyWithImpl(
      _$_EventListData _value, $Res Function(_$_EventListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? image = null,
    Object? description = freezed,
    Object? type = freezed,
    Object? setting = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? participants = null,
  }) {
    return _then(_$_EventListData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participants>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_EventListData implements _EventListData {
  const _$_EventListData(
      {required this.id,
      required this.name,
      this.location,
      @JsonKey(name: 'startDate') this.startDate,
      @JsonKey(name: 'endDate') this.endDate,
      required this.image,
      this.description,
      this.type,
      this.setting,
      this.price,
      this.status,
      final List<Participants> participants = const []})
      : _participants = participants;

  factory _$_EventListData.fromJson(Map<String, dynamic> json) =>
      _$$_EventListDataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? location;
  @override
  @JsonKey(name: 'startDate')
  final String? startDate;
  @override
  @JsonKey(name: 'endDate')
  final String? endDate;
  @override
  final String image;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final String? setting;
  @override
  final double? price;
  @override
  final String? status;
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
    return 'EventListData(id: $id, name: $name, location: $location, startDate: $startDate, endDate: $endDate, image: $image, description: $description, type: $type, setting: $setting, price: $price, status: $status, participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventListData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.setting, setting) || other.setting == setting) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      location,
      startDate,
      endDate,
      image,
      description,
      type,
      setting,
      price,
      status,
      const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventListDataCopyWith<_$_EventListData> get copyWith =>
      __$$_EventListDataCopyWithImpl<_$_EventListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventListDataToJson(
      this,
    );
  }
}

abstract class _EventListData implements EventListData {
  const factory _EventListData(
      {required final String id,
      required final String name,
      final String? location,
      @JsonKey(name: 'startDate') final String? startDate,
      @JsonKey(name: 'endDate') final String? endDate,
      required final String image,
      final String? description,
      final String? type,
      final String? setting,
      final double? price,
      final String? status,
      final List<Participants> participants}) = _$_EventListData;

  factory _EventListData.fromJson(Map<String, dynamic> json) =
      _$_EventListData.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get location;
  @override
  @JsonKey(name: 'startDate')
  String? get startDate;
  @override
  @JsonKey(name: 'endDate')
  String? get endDate;
  @override
  String get image;
  @override
  String? get description;
  @override
  String? get type;
  @override
  String? get setting;
  @override
  double? get price;
  @override
  String? get status;
  @override
  List<Participants> get participants;
  @override
  @JsonKey(ignore: true)
  _$$_EventListDataCopyWith<_$_EventListData> get copyWith =>
      throw _privateConstructorUsedError;
}

Participants _$ParticipantsFromJson(Map<String, dynamic> json) {
  return _Participants.fromJson(json);
}

/// @nodoc
mixin _$Participants {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  Judge? get judge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantsCopyWith<Participants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantsCopyWith<$Res> {
  factory $ParticipantsCopyWith(
          Participants value, $Res Function(Participants) then) =
      _$ParticipantsCopyWithImpl<$Res, Participants>;
  @useResult
  $Res call({String id, String name, String? image, Judge? judge});

  $JudgeCopyWith<$Res>? get judge;
}

/// @nodoc
class _$ParticipantsCopyWithImpl<$Res, $Val extends Participants>
    implements $ParticipantsCopyWith<$Res> {
  _$ParticipantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? judge = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      judge: freezed == judge
          ? _value.judge
          : judge // ignore: cast_nullable_to_non_nullable
              as Judge?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JudgeCopyWith<$Res>? get judge {
    if (_value.judge == null) {
      return null;
    }

    return $JudgeCopyWith<$Res>(_value.judge!, (value) {
      return _then(_value.copyWith(judge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ParticipantsCopyWith<$Res>
    implements $ParticipantsCopyWith<$Res> {
  factory _$$_ParticipantsCopyWith(
          _$_Participants value, $Res Function(_$_Participants) then) =
      __$$_ParticipantsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? image, Judge? judge});

  @override
  $JudgeCopyWith<$Res>? get judge;
}

/// @nodoc
class __$$_ParticipantsCopyWithImpl<$Res>
    extends _$ParticipantsCopyWithImpl<$Res, _$_Participants>
    implements _$$_ParticipantsCopyWith<$Res> {
  __$$_ParticipantsCopyWithImpl(
      _$_Participants _value, $Res Function(_$_Participants) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? judge = freezed,
  }) {
    return _then(_$_Participants(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      judge: freezed == judge
          ? _value.judge
          : judge // ignore: cast_nullable_to_non_nullable
              as Judge?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Participants implements _Participants {
  const _$_Participants(
      {required this.id, required this.name, this.image, this.judge});

  factory _$_Participants.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantsFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? image;
  @override
  final Judge? judge;

  @override
  String toString() {
    return 'Participants(id: $id, name: $name, image: $image, judge: $judge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Participants &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.judge, judge) || other.judge == judge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, judge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipantsCopyWith<_$_Participants> get copyWith =>
      __$$_ParticipantsCopyWithImpl<_$_Participants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantsToJson(
      this,
    );
  }
}

abstract class _Participants implements Participants {
  const factory _Participants(
      {required final String id,
      required final String name,
      final String? image,
      final Judge? judge}) = _$_Participants;

  factory _Participants.fromJson(Map<String, dynamic> json) =
      _$_Participants.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get image;
  @override
  Judge? get judge;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantsCopyWith<_$_Participants> get copyWith =>
      throw _privateConstructorUsedError;
}

Judge _$JudgeFromJson(Map<String, dynamic> json) {
  return _Judge.fromJson(json);
}

/// @nodoc
mixin _$Judge {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JudgeCopyWith<Judge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JudgeCopyWith<$Res> {
  factory $JudgeCopyWith(Judge value, $Res Function(Judge) then) =
      _$JudgeCopyWithImpl<$Res, Judge>;
  @useResult
  $Res call({String id, String name, String? description, String? image});
}

/// @nodoc
class _$JudgeCopyWithImpl<$Res, $Val extends Judge>
    implements $JudgeCopyWith<$Res> {
  _$JudgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? image = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JudgeCopyWith<$Res> implements $JudgeCopyWith<$Res> {
  factory _$$_JudgeCopyWith(_$_Judge value, $Res Function(_$_Judge) then) =
      __$$_JudgeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? description, String? image});
}

/// @nodoc
class __$$_JudgeCopyWithImpl<$Res> extends _$JudgeCopyWithImpl<$Res, _$_Judge>
    implements _$$_JudgeCopyWith<$Res> {
  __$$_JudgeCopyWithImpl(_$_Judge _value, $Res Function(_$_Judge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Judge(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Judge implements _Judge {
  const _$_Judge(
      {required this.id, required this.name, this.description, this.image});

  factory _$_Judge.fromJson(Map<String, dynamic> json) =>
      _$$_JudgeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? image;

  @override
  String toString() {
    return 'Judge(id: $id, name: $name, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Judge &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JudgeCopyWith<_$_Judge> get copyWith =>
      __$$_JudgeCopyWithImpl<_$_Judge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JudgeToJson(
      this,
    );
  }
}

abstract class _Judge implements Judge {
  const factory _Judge(
      {required final String id,
      required final String name,
      final String? description,
      final String? image}) = _$_Judge;

  factory _Judge.fromJson(Map<String, dynamic> json) = _$_Judge.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_JudgeCopyWith<_$_Judge> get copyWith =>
      throw _privateConstructorUsedError;
}
