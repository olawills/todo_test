import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_response.freezed.dart';
part 'basic_response.g.dart';

/// helper functions
String? getString(dynamic val) {
  if (val == null) {
    return null;
  }
  if (val is String) {
    if (val.isEmpty) return null;
    return val;
  }
  if (val is List<dynamic>) {
    return val.map((e) => "$e").toList().join("\n");
  }
  return "$val";
}

bool? getBool(dynamic val) {
  if (val == null) {
    return null;
  }
  if (val is bool) {
    return val;
  }
  if (val is String) {
    if (val.isEmpty) return null;
    return val.toLowerCase().trim() == "true" || val == "1";
  }
  if (val is int) {
    return val == 1;
  }
  return false;
}

/// Response models
@freezed
abstract class BasicResponse<T> with _$BasicResponse {
  factory BasicResponse({
    // @Default(0) int statusCode,
    @JsonKey(fromJson: getBool) bool? success,
    // @JsonKey(fromJson: getString) String? message,
    @JsonKey(fromJson: getString) String? token,
    // dynamic data,
  }) = _BasicResponse;

  factory BasicResponse.fromJson(Map<String, dynamic> json) =>
      _$BasicResponseFromJson(json);
}
