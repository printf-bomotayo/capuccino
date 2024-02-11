import 'package:capuccino/app_bar_section.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const CappuccinoApp());
}

class CappuccinoApp extends StatelessWidget {
  const CappuccinoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const AppBarSection(),
            centerTitle: true,),
          body: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
