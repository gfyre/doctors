import 'package:flutter/material.dart';
import '../model/speciality.dart';

List<SpecialityModel> getSpeciality() {
  List<SpecialityModel> specialities = List<SpecialityModel>();
  SpecialityModel specialityModel = SpecialityModel();


  //1 
  specialityModel.numberOfDoctors = 10;
  specialityModel.speciality = "Cough and Cold";
  specialityModel.imgAssetPath = "assets/img1.png";
  specialityModel.backgroundColor = Color(0xffFBB97C);

  specialities.add(specialityModel);
  specialityModel = SpecialityModel();

  //2
  specialityModel.speciality = "Heart Specialist";
  specialityModel.numberOfDoctors = 17;
  specialityModel.imgAssetPath = "assets/img2.png";
  specialityModel.backgroundColor = Color(0xffF69383);

  specialities.add(specialityModel);
  specialityModel = SpecialityModel();

  //3
  specialityModel.numberOfDoctors = 27;
  specialityModel.speciality = "Diabetic Care";
  specialityModel.imgAssetPath = "assets/img3.png";
  specialityModel.backgroundColor = Color(0xffEACBCB );

  specialities.add(specialityModel);
  specialityModel = SpecialityModel();

  return specialities;
}
