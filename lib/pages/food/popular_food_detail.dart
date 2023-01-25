import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodies/utils/colors.dart';
import 'package:foodies/utils/dimensions.dart';
import 'package:foodies/widgets/app_column.dart';
import 'package:foodies/widgets/app_icon.dart';
import 'package:foodies/widgets/big_text.dart';
import 'package:foodies/widgets/expandable_text_widget.dart';
import 'package:foodies/widgets/icon_and_text_widget.dart';
import 'package:foodies/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background immage
          Positioned(
            left: 0,
            right: 0,
            top: 30,
            child: Container(
              width: double.maxFinite,
              //height: 350,
             height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/image/baklava.jpg'
                    ),),
              ),
          ),),

          //icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_outlined),
            ],
            ),),

            //intro of food
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20, ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimensions.radius20),
              topLeft: Radius.circular(Dimensions.radius20),
              ),
              color: Colors.white,
            ),
            
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppColumn(text:'Güllüoğlu'),
              SizedBox(height: Dimensions.height20,),
              BigText(text: ''),
              SizedBox(height: Dimensions.height20,),
              Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lobortis, orci et pharetra placerat, neque sapien pretium sem, quis accumsan leo risus sed lorem. Aliquam tincidunt leo quam. Nunc tellus elit, porta ut ex et, placerat lobortis nibh. Fusce ullamcorper ullamcorper risus in tincidunt. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit.. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit.. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit.. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit.')))
            ],
           ),
            )),
            //expabdable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20 ),
      decoration: BoxDecoration(
        color: OtherColors.buttonBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20*2),
          topRight: Radius.circular(Dimensions.radius20*2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white
            ),
            child: Row(
              children: [
                Icon(Icons.remove, color: OtherColors.signColor),
                SizedBox(width: Dimensions.width10/2,),
                  BigText(text: '0'),
                SizedBox(width: Dimensions.width10/2,),
                Icon(Icons.add, color: OtherColors.signColor),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
            child: BigText(text: '\₺160 | Sepete Ekle', color: Colors.white,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: OtherColors.mainColor
            ),
          ),
        ],
      ),
      ),
    );
  }
}