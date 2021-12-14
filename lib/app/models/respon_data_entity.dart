import 'dart:convert';
import 'package:gabut_aja/generated/json/base/json_field.dart';
import 'package:gabut_aja/generated/json/respon_data_entity.g.dart';

@JsonSerializable()
class ResponDataEntity {

	List<double>? output;
  
  ResponDataEntity();

  factory ResponDataEntity.fromJson(Map<String, dynamic> json) => $ResponDataEntityFromJson(json);

  Map<String, dynamic> toJson() => $ResponDataEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}