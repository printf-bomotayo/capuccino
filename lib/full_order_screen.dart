import 'package:capuccino/description_section.dart';
import 'package:capuccino/img_section.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CoffeeImage(imageUrl: "assets/images/coffee_img.jpg"),
            const ImgDetails(),
            SizedBox(height: 40, width: 250, child: Divider(color: Colors.grey.shade300)),
            DescriptionSection(),
          ],
        )
    );
  }
}
