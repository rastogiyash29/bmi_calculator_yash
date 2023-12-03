import 'package:flutter/material.dart';
    
class ReusableCard extends StatelessWidget {

  final Color color;
  final Widget childWidget;

  ReusableCard({required this.color,required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color
      ),
      child: childWidget,
    );
  }
}
