import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodies/home/food_page_body.dart';
import 'package:foodies/utils/colors.dart';
import 'package:foodies/widgets/big_text.dart';
import 'package:foodies/widgets/small_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
        children: [
          //header görüntüsü
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "", color: OtherColors.mainColor),
                      Row(
                        children: [
                          SmallText(
                            text: "",
                            color: Colors.black54,
                          ),
                          //Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color: Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: OtherColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //body görüntüsü
        Expanded(child: SingleChildScrollView(child: FoodPageBody(),))
        ],
      ),
    );
  }
}
