import 'package:flutter/material.dart';
import 'package:gabut_aja/app/ui/modules/home/controllers/controller.dart';

import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red[700],
              title: Text("Employee Future Predict"),
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lengkapi data",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Pendidikan Terakhir",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Row(
                      children: [Text("Bachelors=0, Masters=1, PHD= 2")],
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controller.educationController,
                      decoration: InputDecoration(
                          isDense: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Pendidikan Terakhir",
                          fillColor: Colors.white70),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Tahun Bergabung",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controller.yearController,
                      decoration: InputDecoration(
                          isDense: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Tahun Bergabung",
                          fillColor: Colors.white70),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Tingkat Salary",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controller.levelSalaryController,
                      decoration: InputDecoration(
                          isDense: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Tingkat Salary",
                          fillColor: Colors.white70),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Umur",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controller.ageController,
                      decoration: InputDecoration(
                          isDense: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Umur",
                          fillColor: Colors.white70),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Jenis Kelamin",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Row(
                      children: [Text("Male=0, Female=1")],
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controller.genderController,
                      decoration: InputDecoration(
                          isDense: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Jenis Kelamin",
                          fillColor: Colors.white70),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Ever Benched",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Row(
                      children: [Text("Yes=0, No=1")],
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controller.everBenchedController,
                      decoration: InputDecoration(
                          isDense: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Ever Benched",
                          fillColor: Colors.white70),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Experience In Current Dimain",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controller.experionController,
                      decoration: InputDecoration(
                          isDense: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Experience In Current Domain",
                          fillColor: Colors.white70),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        controller.onChackEmployee();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            "Kirim",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Obx(() {
                      return Center(
                        child: Text(
                          controller.responseData.value.output == null
                              ? ""
                              : controller.responseData.value.output![0]
                                  .toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      );
                    }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Tidak Keluar=0, Keluar=1")],
                    ),
                  ],
                ),
              ),
            )));
  }
}
