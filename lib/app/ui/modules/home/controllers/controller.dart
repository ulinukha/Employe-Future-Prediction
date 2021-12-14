import 'package:flutter/material.dart';
import 'package:gabut_aja/app/base/lifecycle/_index.dart';
import 'package:gabut_aja/app/models/respon_data_entity.dart';
import 'package:gabut_aja/generated/json/respon_data_entity.g.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  TextEditingController educationController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController levelSalaryController = TextEditingController();
  TextEditingController everBenchedController = TextEditingController();
  TextEditingController experionController = TextEditingController();

  var responseData = ResponDataEntity().obs;

  @override
  void onInit() {
    super.onInit();
    onLoad();
  }

  onLoad() async {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  onChackEmployee() async {
    isLoading = true;
    var data = [
      int.parse(educationController.text),
      int.parse(yearController.text),
      int.parse(levelSalaryController.text),
      int.parse(ageController.text),
      int.parse(genderController.text),
      int.parse(everBenchedController.text),
      int.parse(experionController.text)
    ];
    print(data);
    var req = await repoHome.checkEmployee(data: data);
    if (req.isFailure) {
      snackBarError(message: 'error', position: SnackPosition.TOP);
    } else {
      ResponDataEntity data = $ResponDataEntityFromJson(req.body);
      if (data.output != null) {
        responseData.value = data;
      } else {
        snackBarError(
            message: "Gagal cek employee", position: SnackPosition.TOP);
      }
    }
    isLoading = false;
  }
}
