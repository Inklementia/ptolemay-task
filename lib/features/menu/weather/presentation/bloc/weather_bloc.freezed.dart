// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocation,
    required TResult Function() getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocation,
    TResult? Function()? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocation,
    TResult Function()? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetWeather value) getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetWeather value)? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetWeather value)? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLocationCopyWith<$Res> {
  factory _$$GetLocationCopyWith(
          _$GetLocation value, $Res Function(_$GetLocation) then) =
      __$$GetLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocationCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetLocation>
    implements _$$GetLocationCopyWith<$Res> {
  __$$GetLocationCopyWithImpl(
      _$GetLocation _value, $Res Function(_$GetLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLocation implements GetLocation {
  const _$GetLocation();

  @override
  String toString() {
    return 'WeatherEvent.getLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocation,
    required TResult Function() getWeather,
  }) {
    return getLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocation,
    TResult? Function()? getWeather,
  }) {
    return getLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocation,
    TResult Function()? getWeather,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetWeather value) getWeather,
  }) {
    return getLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetWeather value)? getWeather,
  }) {
    return getLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetWeather value)? getWeather,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation(this);
    }
    return orElse();
  }
}

abstract class GetLocation implements WeatherEvent {
  const factory GetLocation() = _$GetLocation;
}

/// @nodoc
abstract class _$$GetWeatherCopyWith<$Res> {
  factory _$$GetWeatherCopyWith(
          _$GetWeather value, $Res Function(_$GetWeather) then) =
      __$$GetWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeather>
    implements _$$GetWeatherCopyWith<$Res> {
  __$$GetWeatherCopyWithImpl(
      _$GetWeather _value, $Res Function(_$GetWeather) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeather implements GetWeather {
  const _$GetWeather();

  @override
  String toString() {
    return 'WeatherEvent.getWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocation,
    required TResult Function() getWeather,
  }) {
    return getWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocation,
    TResult? Function()? getWeather,
  }) {
    return getWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocation,
    TResult Function()? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocation value) getLocation,
    required TResult Function(GetWeather value) getWeather,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocation value)? getLocation,
    TResult? Function(GetWeather value)? getWeather,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocation value)? getLocation,
    TResult Function(GetWeather value)? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class GetWeather implements WeatherEvent {
  const factory GetWeather() = _$GetWeather;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCountry,
    required TResult Function(String country) loadedCountry,
    required TResult Function() loading,
    required TResult Function(WeatherEntity weather) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCountry,
    TResult? Function(String country)? loadedCountry,
    TResult? Function()? loading,
    TResult? Function(WeatherEntity weather)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCountry,
    TResult Function(String country)? loadedCountry,
    TResult Function()? loading,
    TResult Function(WeatherEntity weather)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherCountryLoading value) loadingCountry,
    required TResult Function(WeatherCountryLoaded value) loadedCountry,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherCountryLoading value)? loadingCountry,
    TResult? Function(WeatherCountryLoaded value)? loadedCountry,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherCountryLoading value)? loadingCountry,
    TResult Function(WeatherCountryLoaded value)? loadedCountry,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherInitialCopyWith<$Res> {
  factory _$$WeatherInitialCopyWith(
          _$WeatherInitial value, $Res Function(_$WeatherInitial) then) =
      __$$WeatherInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherInitialCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherInitial>
    implements _$$WeatherInitialCopyWith<$Res> {
  __$$WeatherInitialCopyWithImpl(
      _$WeatherInitial _value, $Res Function(_$WeatherInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherInitial implements WeatherInitial {
  const _$WeatherInitial();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCountry,
    required TResult Function(String country) loadedCountry,
    required TResult Function() loading,
    required TResult Function(WeatherEntity weather) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCountry,
    TResult? Function(String country)? loadedCountry,
    TResult? Function()? loading,
    TResult? Function(WeatherEntity weather)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCountry,
    TResult Function(String country)? loadedCountry,
    TResult Function()? loading,
    TResult Function(WeatherEntity weather)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherCountryLoading value) loadingCountry,
    required TResult Function(WeatherCountryLoaded value) loadedCountry,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherCountryLoading value)? loadingCountry,
    TResult? Function(WeatherCountryLoaded value)? loadedCountry,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherCountryLoading value)? loadingCountry,
    TResult Function(WeatherCountryLoaded value)? loadedCountry,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WeatherInitial implements WeatherState {
  const factory WeatherInitial() = _$WeatherInitial;
}

/// @nodoc
abstract class _$$WeatherCountryLoadingCopyWith<$Res> {
  factory _$$WeatherCountryLoadingCopyWith(_$WeatherCountryLoading value,
          $Res Function(_$WeatherCountryLoading) then) =
      __$$WeatherCountryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherCountryLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherCountryLoading>
    implements _$$WeatherCountryLoadingCopyWith<$Res> {
  __$$WeatherCountryLoadingCopyWithImpl(_$WeatherCountryLoading _value,
      $Res Function(_$WeatherCountryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherCountryLoading implements WeatherCountryLoading {
  const _$WeatherCountryLoading();

  @override
  String toString() {
    return 'WeatherState.loadingCountry()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherCountryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCountry,
    required TResult Function(String country) loadedCountry,
    required TResult Function() loading,
    required TResult Function(WeatherEntity weather) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loadingCountry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCountry,
    TResult? Function(String country)? loadedCountry,
    TResult? Function()? loading,
    TResult? Function(WeatherEntity weather)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loadingCountry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCountry,
    TResult Function(String country)? loadedCountry,
    TResult Function()? loading,
    TResult Function(WeatherEntity weather)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loadingCountry != null) {
      return loadingCountry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherCountryLoading value) loadingCountry,
    required TResult Function(WeatherCountryLoaded value) loadedCountry,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return loadingCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherCountryLoading value)? loadingCountry,
    TResult? Function(WeatherCountryLoaded value)? loadedCountry,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return loadingCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherCountryLoading value)? loadingCountry,
    TResult Function(WeatherCountryLoaded value)? loadedCountry,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (loadingCountry != null) {
      return loadingCountry(this);
    }
    return orElse();
  }
}

abstract class WeatherCountryLoading implements WeatherState {
  const factory WeatherCountryLoading() = _$WeatherCountryLoading;
}

/// @nodoc
abstract class _$$WeatherCountryLoadedCopyWith<$Res> {
  factory _$$WeatherCountryLoadedCopyWith(_$WeatherCountryLoaded value,
          $Res Function(_$WeatherCountryLoaded) then) =
      __$$WeatherCountryLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String country});
}

/// @nodoc
class __$$WeatherCountryLoadedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherCountryLoaded>
    implements _$$WeatherCountryLoadedCopyWith<$Res> {
  __$$WeatherCountryLoadedCopyWithImpl(_$WeatherCountryLoaded _value,
      $Res Function(_$WeatherCountryLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$WeatherCountryLoaded(
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherCountryLoaded implements WeatherCountryLoaded {
  const _$WeatherCountryLoaded(this.country);

  @override
  final String country;

  @override
  String toString() {
    return 'WeatherState.loadedCountry(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherCountryLoaded &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherCountryLoadedCopyWith<_$WeatherCountryLoaded> get copyWith =>
      __$$WeatherCountryLoadedCopyWithImpl<_$WeatherCountryLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCountry,
    required TResult Function(String country) loadedCountry,
    required TResult Function() loading,
    required TResult Function(WeatherEntity weather) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loadedCountry(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCountry,
    TResult? Function(String country)? loadedCountry,
    TResult? Function()? loading,
    TResult? Function(WeatherEntity weather)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loadedCountry?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCountry,
    TResult Function(String country)? loadedCountry,
    TResult Function()? loading,
    TResult Function(WeatherEntity weather)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loadedCountry != null) {
      return loadedCountry(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherCountryLoading value) loadingCountry,
    required TResult Function(WeatherCountryLoaded value) loadedCountry,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return loadedCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherCountryLoading value)? loadingCountry,
    TResult? Function(WeatherCountryLoaded value)? loadedCountry,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return loadedCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherCountryLoading value)? loadingCountry,
    TResult Function(WeatherCountryLoaded value)? loadedCountry,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (loadedCountry != null) {
      return loadedCountry(this);
    }
    return orElse();
  }
}

abstract class WeatherCountryLoaded implements WeatherState {
  const factory WeatherCountryLoaded(final String country) =
      _$WeatherCountryLoaded;

  String get country;
  @JsonKey(ignore: true)
  _$$WeatherCountryLoadedCopyWith<_$WeatherCountryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherLoadingCopyWith<$Res> {
  factory _$$WeatherLoadingCopyWith(
          _$WeatherLoading value, $Res Function(_$WeatherLoading) then) =
      __$$WeatherLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoading>
    implements _$$WeatherLoadingCopyWith<$Res> {
  __$$WeatherLoadingCopyWithImpl(
      _$WeatherLoading _value, $Res Function(_$WeatherLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherLoading implements WeatherLoading {
  const _$WeatherLoading();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCountry,
    required TResult Function(String country) loadedCountry,
    required TResult Function() loading,
    required TResult Function(WeatherEntity weather) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCountry,
    TResult? Function(String country)? loadedCountry,
    TResult? Function()? loading,
    TResult? Function(WeatherEntity weather)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCountry,
    TResult Function(String country)? loadedCountry,
    TResult Function()? loading,
    TResult Function(WeatherEntity weather)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherCountryLoading value) loadingCountry,
    required TResult Function(WeatherCountryLoaded value) loadedCountry,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherCountryLoading value)? loadingCountry,
    TResult? Function(WeatherCountryLoaded value)? loadedCountry,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherCountryLoading value)? loadingCountry,
    TResult Function(WeatherCountryLoaded value)? loadedCountry,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherLoading implements WeatherState {
  const factory WeatherLoading() = _$WeatherLoading;
}

/// @nodoc
abstract class _$$WeatherLoadedCopyWith<$Res> {
  factory _$$WeatherLoadedCopyWith(
          _$WeatherLoaded value, $Res Function(_$WeatherLoaded) then) =
      __$$WeatherLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherEntity weather});

  $WeatherEntityCopyWith<$Res> get weather;
}

/// @nodoc
class __$$WeatherLoadedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoaded>
    implements _$$WeatherLoadedCopyWith<$Res> {
  __$$WeatherLoadedCopyWithImpl(
      _$WeatherLoaded _value, $Res Function(_$WeatherLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$WeatherLoaded(
      null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherEntityCopyWith<$Res> get weather {
    return $WeatherEntityCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

class _$WeatherLoaded implements WeatherLoaded {
  const _$WeatherLoaded(this.weather);

  @override
  final WeatherEntity weather;

  @override
  String toString() {
    return 'WeatherState.loaded(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoaded &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLoadedCopyWith<_$WeatherLoaded> get copyWith =>
      __$$WeatherLoadedCopyWithImpl<_$WeatherLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCountry,
    required TResult Function(String country) loadedCountry,
    required TResult Function() loading,
    required TResult Function(WeatherEntity weather) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCountry,
    TResult? Function(String country)? loadedCountry,
    TResult? Function()? loading,
    TResult? Function(WeatherEntity weather)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCountry,
    TResult Function(String country)? loadedCountry,
    TResult Function()? loading,
    TResult Function(WeatherEntity weather)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherCountryLoading value) loadingCountry,
    required TResult Function(WeatherCountryLoaded value) loadedCountry,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherCountryLoading value)? loadingCountry,
    TResult? Function(WeatherCountryLoaded value)? loadedCountry,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherCountryLoading value)? loadingCountry,
    TResult Function(WeatherCountryLoaded value)? loadedCountry,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherLoaded implements WeatherState {
  const factory WeatherLoaded(final WeatherEntity weather) = _$WeatherLoaded;

  WeatherEntity get weather;
  @JsonKey(ignore: true)
  _$$WeatherLoadedCopyWith<_$WeatherLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherErrorCopyWith<$Res> {
  factory _$$WeatherErrorCopyWith(
          _$WeatherError value, $Res Function(_$WeatherError) then) =
      __$$WeatherErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$WeatherErrorCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherError>
    implements _$$WeatherErrorCopyWith<$Res> {
  __$$WeatherErrorCopyWithImpl(
      _$WeatherError _value, $Res Function(_$WeatherError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$WeatherError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherError implements WeatherError {
  const _$WeatherError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'WeatherState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherErrorCopyWith<_$WeatherError> get copyWith =>
      __$$WeatherErrorCopyWithImpl<_$WeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingCountry,
    required TResult Function(String country) loadedCountry,
    required TResult Function() loading,
    required TResult Function(WeatherEntity weather) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingCountry,
    TResult? Function(String country)? loadedCountry,
    TResult? Function()? loading,
    TResult? Function(WeatherEntity weather)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingCountry,
    TResult Function(String country)? loadedCountry,
    TResult Function()? loading,
    TResult Function(WeatherEntity weather)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherCountryLoading value) loadingCountry,
    required TResult Function(WeatherCountryLoaded value) loadedCountry,
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherCountryLoading value)? loadingCountry,
    TResult? Function(WeatherCountryLoaded value)? loadedCountry,
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherCountryLoading value)? loadingCountry,
    TResult Function(WeatherCountryLoaded value)? loadedCountry,
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherError implements WeatherState {
  const factory WeatherError(final String errorMessage) = _$WeatherError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$WeatherErrorCopyWith<_$WeatherError> get copyWith =>
      throw _privateConstructorUsedError;
}
