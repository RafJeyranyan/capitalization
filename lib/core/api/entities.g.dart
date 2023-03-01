// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      Name: json['Name'] as String?,
      MarketCapitalization: json['MarketCapitalization'] as String?,
      Symbol: json['Symbol'] as String?,
      Description: json['Description'] as String?,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'Name': instance.Name,
      'MarketCapitalization': instance.MarketCapitalization,
      'Symbol': instance.Symbol,
      'Description': instance.Description,
    };
