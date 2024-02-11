import 'package:flutter/material.dart';

class TextStyling extends StatelessWidget {
  const TextStyling({super.key,
    required this.text,
  required this.fontWeight,
  required this.fontColor,
    this.fontSize = 10,}
 );

  final String text;
  final Color fontColor;
  final FontWeight fontWeight;
  final double  fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: fontColor,
        fontFamily: "Sora"
      )
    );
  }
}


Color getColorFromName(String colorName) {
  switch (colorName) {
    case 'red':
      return Colors.red;
    case 'blue':
      return Colors.blue;
    case 'green':
      return Colors.green;
  // add more cases as needed
    default:
      return Colors.black;
  }
}


FontWeight getFontWeightFromContentType(String sectionName) {
  switch (sectionName) {
    case 'title':
      return FontWeight.bold;
    case 'body':
      return FontWeight.normal;
    default:
      return FontWeight.normal;
  }
}
