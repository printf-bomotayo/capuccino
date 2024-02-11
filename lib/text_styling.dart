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


Color getColorFromSectionType(String sectionName) {
  switch (sectionName) {
    case 'body':
      return Colors.grey;
    case 'title':
      return Colors.black;
    case 'others':
      return const Color.fromARGB(218, 144, 65, 36);
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
