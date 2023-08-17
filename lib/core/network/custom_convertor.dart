// Package imports:
import 'dart:async';

// Flutter imports:
import 'package:chopper/chopper.dart';
import 'package:testtask/features/menu/weather/data/models/weather_model.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

const factories = const {
  WeatherModel: WeatherModel.fromJson,
  //
};

class MyJsonConverter extends JsonConverter {
  //
  @override
  FutureOr<Response<B>> convertResponse<B, T>(Response response) async {
    // use [JsonConverter] to decode json
    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<B>(body: _decode<T>(jsonRes.body));
  }

  dynamic _decode<T>(entity) {
    if (entity is Iterable) return _decodeList<T>(entity as List);

    if (entity is Map) return _decodeMap<T>(entity as Map<String, dynamic>);

    return entity;
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => _decode<T>(v)).toList();

  T? _decodeMap<T>(Map<String, dynamic> values) {
    /// Get jsonFactory using Type parameters
    /// if not found or invalid, throw error or return null
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      /// throw serializer not found error;
      return null;
    }

    return jsonFactory(values) as T;
  }
}
