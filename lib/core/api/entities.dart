import 'package:json_annotation/json_annotation.dart';

part 'entities.g.dart';

@JsonSerializable()
class Company {
  String? Name;
  String? MarketCapitalization;
  String? Symbol;
  String? Description;
  String? Note;

  Company({
    this.Name,
    this.MarketCapitalization,
    this.Symbol,
    this.Description,
    this.Note,
});


  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}