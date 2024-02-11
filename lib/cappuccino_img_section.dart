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
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Row(children: [
            Text("Cappuccino",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    fontFamily: "Sora"))
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(left: 50.0, top: 3.0),
          child: Row(children: [
            Text("with Chocolate",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 10.0,
                    color: Colors.grey,
                    fontFamily: "Sora"))
          ]),
        ),
      ],
    );
  }
}


