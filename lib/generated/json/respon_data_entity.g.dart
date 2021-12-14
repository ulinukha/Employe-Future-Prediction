import 'package:gabut_aja/generated/json/base/json_convert_content.dart';
import 'package:gabut_aja/app/models/respon_data_entity.dart';

ResponDataEntity $ResponDataEntityFromJson(Map<String, dynamic> json) {
	final ResponDataEntity responDataEntity = ResponDataEntity();
	final List<double>? output = jsonConvert.convertListNotNull<double>(json['output']);
	if (output != null) {
		responDataEntity.output = output;
	}
	return responDataEntity;
}

Map<String, dynamic> $ResponDataEntityToJson(ResponDataEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['output'] =  entity.output;
	return data;
}