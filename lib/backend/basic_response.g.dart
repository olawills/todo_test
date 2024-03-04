// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicResponseImpl<T> _$$BasicResponseImplFromJson<T>(
        Map<String, dynamic> json) =>
    _$BasicResponseImpl<T>(
      // statusCode: json['statusCode'] as int? ?? 0,
      success: getBool(json['success']),
      token: getString(json['token']),
      // data: json['data'],
    );

Map<String, dynamic> _$$BasicResponseImplToJson<T>(
        _$BasicResponseImpl<T> instance) =>
    <String, dynamic>{
      // 'statusCode': instance.statusCode,
      'success': instance.success,
      'token': instance.token,
      // 'data': instance.data,
    };
