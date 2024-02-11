
import 'package:capuccino/styling.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextStyling(text: "Description",
                fontWeight: getFontWeightFromContentType("title"),
                fontColor: getColorFromSectionType("title"),
            fontSize: 16.0,),]),),
      Padding(
          padding: const EdgeInsets.only(left: 50.0, top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 250.0,
                child: Expanded(
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        text:
                        "A cappuccino is an approximately 150ml (5 oz) beverage, with 25ml of espresso coffee and 85ml of fresh milk the fo...",
                        style: TextStyle(
                          fontSize: 10, color: Colors.grey, fontFamily: "Sora"),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Read More",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(218, 144, 65, 36),
                                fontSize: 12),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          )),
      Padding(
        padding: const EdgeInsets.only(left: 50.0, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextStyling(text: "Size", fontWeight: getFontWeightFromContentType("title"),
                fontColor: getColorFromSectionType("title"),
            fontSize: 15.0,),

          ],
        ),
      ),
    ]);
  }
}
