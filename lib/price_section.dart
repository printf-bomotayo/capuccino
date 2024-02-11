
import 'package:capuccino/styling.dart';
import 'package:flutter/material.dart';


class PriceSection extends StatelessWidget {
  const PriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        width:380.0,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              style: BorderStyle.none, color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: .5, bottom: 5.0, top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextStyling(text: "Price", fontWeight: getFontWeightFromContentType("body"),
                            fontColor: getColorFromSectionType("body"),
                            fontSize: 12.0,),],),),
                  Row(
                    children: [
                      TextStyling(text: "\$ 4.53",
                          fontWeight: getFontWeightFromContentType("title"),
                          fontColor: getColorFromSectionType("others"),
                        fontSize: 15,),
                    ],
                  )
                ],
              ),
              Container(
                  width: 190.0,
                  height: 45.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(218, 144, 65, 36), // Color.fromARGB(235, 177, 110, 10),
                    border:
                    Border.all(style: BorderStyle.none, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  const Text(
                    "Buy Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Sora",
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
