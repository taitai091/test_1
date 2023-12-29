// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hp_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HpData _$HpDataFromJson(Map<String, dynamic> json) {
  return _HpData.fromJson(json);
}

/// @nodoc
mixin _$HpData {
  int get currentHp => throw _privateConstructorUsedError;
  int get maxHp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HpDataCopyWith<HpData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HpDataCopyWith<$Res> {
  factory $HpDataCopyWith(HpData value, $Res Function(HpData) then) =
      _$HpDataCopyWithImpl<$Res, HpData>;
  @useResult
  $Res call({int currentHp, int maxHp});
}

/// @nodoc
class _$HpDataCopyWithImpl<$Res, $Val extends HpData>
    implements $HpDataCopyWith<$Res> {
  _$HpDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentHp = null,
    Object? maxHp = null,
  }) {
    return _then(_value.copyWith(
      currentHp: null == currentHp
          ? _value.currentHp
          : currentHp // ignore: cast_nullable_to_non_nullable
              as int,
      maxHp: null == maxHp
          ? _value.maxHp
          : maxHp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HpDataCopyWith<$Res> implements $HpDataCopyWith<$Res> {
  factory _$$_HpDataCopyWith(_$_HpData value, $Res Function(_$_HpData) then) =
      __$$_HpDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentHp, int maxHp});
}

/// @nodoc
class __$$_HpDataCopyWithImpl<$Res>
    extends _$HpDataCopyWithImpl<$Res, _$_HpData>
    implements _$$_HpDataCopyWith<$Res> {
  __$$_HpDataCopyWithImpl(_$_HpData _value, $Res Function(_$_HpData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentHp = null,
    Object? maxHp = null,
  }) {
    return _then(_$_HpData(
      currentHp: null == currentHp
          ? _value.currentHp
          : currentHp // ignore: cast_nullable_to_non_nullable
              as int,
      maxHp: null == maxHp
          ? _value.maxHp
          : maxHp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HpData with DiagnosticableTreeMixin implements _HpData {
  const _$_HpData({this.currentHp = 0, this.maxHp = 100});

  factory _$_HpData.fromJson(Map<String, dynamic> json) =>
      _$$_HpDataFromJson(json);

  @override
  @JsonKey()
  final int currentHp;
  @override
  @JsonKey()
  final int maxHp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HpData(currentHp: $currentHp, maxHp: $maxHp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HpData'))
      ..add(DiagnosticsProperty('currentHp', currentHp))
      ..add(DiagnosticsProperty('maxHp', maxHp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HpData &&
            (identical(other.currentHp, currentHp) ||
                other.currentHp == currentHp) &&
            (identical(other.maxHp, maxHp) || other.maxHp == maxHp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentHp, maxHp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HpDataCopyWith<_$_HpData> get copyWith =>
      __$$_HpDataCopyWithImpl<_$_HpData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HpDataToJson(
      this,
    );
  }
}

abstract class _HpData implements HpData {
  const factory _HpData({final int currentHp, final int maxHp}) = _$_HpData;

  factory _HpData.fromJson(Map<String, dynamic> json) = _$_HpData.fromJson;

  @override
  int get currentHp;
  @override
  int get maxHp;
  @override
  @JsonKey(ignore: true)
  _$$_HpDataCopyWith<_$_HpData> get copyWith =>
      throw _privateConstructorUsedError;
}
