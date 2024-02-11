import 'package:capuccino/text_styling.dart';
import 'package:flutter/material.dart';


class CoffeeImage extends StatelessWidget {
  const CoffeeImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Image.asset(width: 250.0, imageUrl),
    );
  }
}

class ImgDetails extends StatelessWidget {
  const ImgDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Row(children: [
            TextStyling(text: "Cappuccino", 
                fontWeight: getFontWeightFromContentType("title"), 
                fontColor: getColorFromSectionType("title"),
            fontSize: 15.0,)
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, top: 3.0),
          child: Row(children: [
            TextStyling(text: "with Chocolate",
                fontWeight: getFontWeightFromContentType("body"),
                fontColor: getColorFromSectionType("body"))
            ]),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    const Icon(Icons.star,
                        size: 19.0, color: Color.fromARGB(255, 212, 186, 14)),
                    TextStyling(text: "4.8", fontWeight: getFontWeightFromContentType("title"),
                        fontColor: getColorFromSectionType("title"),
                      fontSize: 15.0,),
                    TextStyling(text: " (230)",
                        fontWeight: getFontWeightFromContentType("body"),
                        fontColor: getColorFromSectionType("body")),
                  ])
                ],
              ),
              const Column(
                children: [SizedBox(width: 80)],
              ),
              Container(
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset("assets/images/bean.png", width: 8.0)),
              const SizedBox(width: 18.0),
              Container(
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset("assets/images/milk.png", width: 8.0)),
            ],
          ),
        ),
      ],
    );
  }
}


