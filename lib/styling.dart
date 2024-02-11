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

class SideImageStyling extends StatelessWidget {
  const SideImageStyling({super.key,
  required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45.0,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15)),
        child: Image.asset(imageUrl, width: 8.0));
  }
}


class SizeSection extends StatelessWidget {
  const SizeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(top: 8.0, left: .5),
        child: SizedBox(
        width: 300.0,
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 ButtonSection(label: "S"),
                 ButtonSection(label: "M"),
                 ButtonSection(label: "L")
                   ])));
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key, required this.label });

  final String label;

  Color setBtnBgColor() {
    if(label == 'M') {
      return const Color.fromARGB(104, 210, 184, 174);
    }
    return Colors.white;
  }

  Color setBtnBorderColor() {
    if(label == 'M') {
      return const Color.fromARGB(218, 144, 65, 36);
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80.0,
        height: 35.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: setBtnBgColor(),
            border: Border.all(
                style: BorderStyle.solid, color: setBtnBorderColor()),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "Sora",
            fontSize: 14.0,
          ),
        ));
  }
}



