// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_history_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventHistoryResponseModel _$EventHistoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _EventHistoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EventHistoryResponseModel {
  List<EventHistoryData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventHistoryResponseModelCopyWith<EventHistoryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventHistoryResponseModelCopyWith<$Res> {
  factory $EventHistoryResponseModelCopyWith(EventHistoryResponseModel value,
          $Res Function(EventHistoryResponseModel) then) =
      _$EventHistoryResponseModelCopyWithImpl<$Res, EventHistoryResponseModel>;
  @useResult
  $Res call({List<EventHistoryData> data});
}

/// @nodoc
class _$EventHistoryResponseModelCopyWithImpl<$Res,
        $Val extends EventHistoryResponseModel>
    implements $EventHistoryResponseModelCopyWith<$Res> {
  _$EventHistoryResponseModelCopyWithImpl(this._value, this._then);

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
              as List<EventHistoryData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventHistoryResponseModelCopyWith<$Res>
    implements $EventHistoryResponseModelCopyWith<$Res> {
  factory _$$_EventHistoryResponseModelCopyWith(
          _$_EventHistoryResponseModel value,
          $Res Function(_$_EventHistoryResponseModel) then) =
      __$$_EventHistoryResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventHistoryData> data});
}

/// @nodoc
class __$$_EventHistoryResponseModelCopyWithImpl<$Res>
    extends _$EventHistoryResponseModelCopyWithImpl<$Res,
        _$_EventHistoryResponseModel>
    implements _$$_EventHistoryResponseModelCopyWith<$Res> {
  __$$_EventHistoryResponseModelCopyWithImpl(
      _$_EventHistoryResponseModel _value,
      $Res Function(_$_EventHistoryResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_EventHistoryResponseModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EventHistoryData>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_EventHistoryResponseModel implements _EventHistoryResponseModel {
  const _$_EventHistoryResponseModel(
      {final List<EventHistoryData> data = const []})
      : _data = data;

  factory _$_EventHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventHistoryResponseModelFromJson(json);

  final List<EventHistoryData> _data;
  @override
  @JsonKey()
  List<EventHistoryData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EventHistoryResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventHistoryResponseModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventHistoryResponseModelCopyWith<_$_EventHistoryResponseModel>
      get copyWith => __$$_EventHistoryResponseModelCopyWithImpl<
          _$_EventHistoryResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventHistoryResponseModelToJson(
      this,
    );
  }
}

abstract class _EventHistoryResponseModel implements EventHistoryResponseModel {
  const factory _EventHistoryResponseModel(
      {final List<EventHistoryData> data}) = _$_EventHistoryResponseModel;

  factory _EventHistoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$_EventHistoryResponseModel.fromJson;

  @override
  List<EventHistoryData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_EventHistoryResponseModelCopyWith<_$_EventHistoryResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

EventHistoryData _$EventHistoryDataFromJson(Map<String, dynamic> json) {
  return _EventHistoryData.fromJson(json);
}

/// @nodoc
mixin _$EventHistoryData {
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'voteDate')
  String? get voteDate => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  Event? get event => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventHistoryDataCopyWith<EventHistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventHistoryDataCopyWith<$Res> {
  factory $EventHistoryDataCopyWith(
          EventHistoryData value, $Res Function(EventHistoryData) then) =
      _$EventHistoryDataCopyWithImpl<$Res, EventHistoryData>;
  @useResult
  $Res call(
      {int? count,
      @JsonKey(name: 'voteDate') String? voteDate,
      double? amount,
      Event? event});

  $EventCopyWith<$Res>? get event;
}

/// @nodoc
class _$EventHistoryDataCopyWithImpl<$Res, $Val extends EventHistoryData>
    implements $EventHistoryDataCopyWith<$Res> {
  _$EventHistoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? voteDate = freezed,
    Object? amount = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      voteDate: freezed == voteDate
          ? _value.voteDate
          : voteDate // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $EventCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventHistoryDataCopyWith<$Res>
    implements $EventHistoryDataCopyWith<$Res> {
  factory _$$_EventHistoryDataCopyWith(
          _$_EventHistoryData value, $Res Function(_$_EventHistoryData) then) =
      __$$_EventHistoryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      @JsonKey(name: 'voteDate') String? voteDate,
      double? amount,
      Event? event});

  @override
  $EventCopyWith<$Res>? get event;
}

/// @nodoc
class __$$_EventHistoryDataCopyWithImpl<$Res>
    extends _$EventHistoryDataCopyWithImpl<$Res, _$_EventHistoryData>
    implements _$$_EventHistoryDataCopyWith<$Res> {
  __$$_EventHistoryDataCopyWithImpl(
      _$_EventHistoryData _value, $Res Function(_$_EventHistoryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? voteDate = freezed,
    Object? amount = freezed,
    Object? event = freezed,
  }) {
    return _then(_$_EventHistoryData(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      voteDate: freezed == voteDate
          ? _value.voteDate
          : voteDate // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_EventHistoryData implements _EventHistoryData {
  const _$_EventHistoryData(
      {this.count,
      @JsonKey(name: 'voteDate') this.voteDate,
      this.amount,
      this.event});

  factory _$_EventHistoryData.fromJson(Map<String, dynamic> json) =>
      _$$_EventHistoryDataFromJson(json);

  @override
  final int? count;
  @override
  @JsonKey(name: 'voteDate')
  final String? voteDate;
  @override
  final double? amount;
  @override
  final Event? event;

  @override
  String toString() {
    return 'EventHistoryData(count: $count, voteDate: $voteDate, amount: $amount, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventHistoryData &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.voteDate, voteDate) ||
                other.voteDate == voteDate) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, voteDate, amount, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventHistoryDataCopyWith<_$_EventHistoryData> get copyWith =>
      __$$_EventHistoryDataCopyWithImpl<_$_EventHistoryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventHistoryDataToJson(
      this,
    );
  }
}

abstract class _EventHistoryData implements EventHistoryData {
  const factory _EventHistoryData(
      {final int? count,
      @JsonKey(name: 'voteDate') final String? voteDate,
      final double? amount,
      final Event? event}) = _$_EventHistoryData;

  factory _EventHistoryData.fromJson(Map<String, dynamic> json) =
      _$_EventHistoryData.fromJson;

  @override
  int? get count;
  @override
  @JsonKey(name: 'voteDate')
  String? get voteDate;
  @override
  double? get amount;
  @override
  Event? get event;
  @override
  @JsonKey(ignore: true)
  _$$_EventHistoryDataCopyWith<_$_EventHistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String? get participant => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'participantImage')
  String? get participantImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {String? participant,
      String name,
      String? image,
      @JsonKey(name: 'participantImage') String? participantImage});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participant = freezed,
    Object? name = null,
    Object? image = freezed,
    Object? participantImage = freezed,
  }) {
    return _then(_value.copyWith(
      participant: freezed == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      participantImage: freezed == participantImage
          ? _value.participantImage
          : participantImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? participant,
      String name,
      String? image,
      @JsonKey(name: 'participantImage') String? participantImage});
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res, _$_Event>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participant = freezed,
    Object? name = null,
    Object? image = freezed,
    Object? participantImage = freezed,
  }) {
    return _then(_$_Event(
      participant: freezed == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      participantImage: freezed == participantImage
          ? _value.participantImage
          : participantImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Event implements _Event {
  const _$_Event(
      {this.participant,
      required this.name,
      this.image,
      @JsonKey(name: 'participantImage') this.participantImage});

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$$_EventFromJson(json);

  @override
  final String? participant;
  @override
  final String name;
  @override
  final String? image;
  @override
  @JsonKey(name: 'participantImage')
  final String? participantImage;

  @override
  String toString() {
    return 'Event(participant: $participant, name: $name, image: $image, participantImage: $participantImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            (identical(other.participant, participant) ||
                other.participant == participant) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.participantImage, participantImage) ||
                other.participantImage == participantImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, participant, name, image, participantImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
          {final String? participant,
          required final String name,
          final String? image,
          @JsonKey(name: 'participantImage') final String? participantImage}) =
      _$_Event;

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  String? get participant;
  @override
  String get name;
  @override
  String? get image;
  @override
  @JsonKey(name: 'participantImage')
  String? get participantImage;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
