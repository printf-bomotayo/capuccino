import 'package:capuccino/cappuccino_img_section.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CoffeeImage(imageUrl: "assets/images/coffee_img.jpg"),
            ImgDetails(),
          ],
        )
    );
  }
}
