// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEntity {
  WeatherMainEntity get main => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEntityCopyWith<WeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEntityCopyWith<$Res> {
  factory $WeatherEntityCopyWith(
          WeatherEntity value, $Res Function(WeatherEntity) then) =
      _$WeatherEntityCopyWithImpl<$Res, WeatherEntity>;
  @useResult
  $Res call({WeatherMainEntity main, String name});

  $WeatherMainEntityCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherEntityCopyWithImpl<$Res, $Val extends WeatherEntity>
    implements $WeatherEntityCopyWith<$Res> {
  _$WeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMainEntity,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherMainEntityCopyWith<$Res> get main {
    return $WeatherMainEntityCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherEntityCopyWith<$Res>
    implements $WeatherEntityCopyWith<$Res> {
  factory _$$_WeatherEntityCopyWith(
          _$_WeatherEntity value, $Res Function(_$_WeatherEntity) then) =
      __$$_WeatherEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherMainEntity main, String name});

  @override
  $WeatherMainEntityCopyWith<$Res> get main;
}

/// @nodoc
class __$$_WeatherEntityCopyWithImpl<$Res>
    extends _$WeatherEntityCopyWithImpl<$Res, _$_WeatherEntity>
    implements _$$_WeatherEntityCopyWith<$Res> {
  __$$_WeatherEntityCopyWithImpl(
      _$_WeatherEntity _value, $Res Function(_$_WeatherEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? name = null,
  }) {
    return _then(_$_WeatherEntity(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMainEntity,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherEntity implements _WeatherEntity {
  const _$_WeatherEntity({required this.main, required this.name});

  @override
  final WeatherMainEntity main;
  @override
  final String name;

  @override
  String toString() {
    return 'WeatherEntity(main: $main, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherEntity &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, main, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherEntityCopyWith<_$_WeatherEntity> get copyWith =>
      __$$_WeatherEntityCopyWithImpl<_$_WeatherEntity>(this, _$identity);
}

abstract class _WeatherEntity implements WeatherEntity {
  const factory _WeatherEntity(
      {required final WeatherMainEntity main,
      required final String name}) = _$_WeatherEntity;

  @override
  WeatherMainEntity get main;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherEntityCopyWith<_$_WeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
