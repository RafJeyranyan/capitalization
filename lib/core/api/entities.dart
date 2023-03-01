import 'package:json_annotation/json_annotation.dart';

part 'entities.g.dart';

@JsonSerializable()
class Company {
  String? Name;
  String? MarketCapitalization;
  String? Symbol;

  Company({
    this.Name,
    this.MarketCapitalization,
    this.Symbol,
});


  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}