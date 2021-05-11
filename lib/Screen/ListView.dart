import 'package:flutter/material.dart';
class ListModel{
  final String title,subtitle;
  final Icon icon;
  ListModel({this.title,this.subtitle,this.icon});
}

List<ListModel> infoList=[
  ListModel(
    title: "Email",
    subtitle: "user123@gmail.com",
    icon: Icon(Icons.mail,color: Color(0xffDA44bb))
  ),
  ListModel(
      title: "Phone",
      subtitle: "81293383766",
      icon: Icon(Icons.phone,color: Color(0xffDA44bb))
  ),
  ListModel(
      title: "Qualification",
      subtitle: "MCA",
      icon: Icon(Icons.cast_for_education,color: Color(0xffDA44bb))
  )
];
