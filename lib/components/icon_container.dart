// ignore_for_file: unnecessary_this, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color bgColor, borderColor;
  final double width, height, size;
  final int index;

  const IconContainer({super.key, 
          this.borderColor = Colors.transparent,
          required this.bgColor,
          required this.index,
          required this.height,
          required this.width,
          required this.size});



  @override
  Widget build(BuildContext context) {
  List<IconData> _icons =[
    Icons.event_note,
    Icons.work,
    Icons.umbrella,
    Icons.add_location,
    Icons.medical_services,
    Icons.cast_for_education_outlined,
    Icons.construction,
    Icons.flight
  ];

    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        color: this.bgColor,
        shape: BoxShape.circle,
        border: this.borderColor == Colors.transparent?
          Border.all(width: 5, color:Colors.transparent):
          Border.all(width:5, color:this.borderColor),
      ),
      child: Icon(
        _icons[index], size: this.size, color: Colors.white,
      )
    );
  }
}