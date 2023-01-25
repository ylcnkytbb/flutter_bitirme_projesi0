import 'package:flutter/material.dart';
import 'package:foodies/utils/colors.dart';
import 'package:foodies/utils/dimensions.dart';
import 'package:foodies/widgets/big_text.dart';
import 'package:foodies/widgets/icon_and_text_widget.dart';
import 'package:foodies/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: text, size: Dimensions.font26),
                    SizedBox(
                      height: 10, // height10
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: OtherColors.mainColor, size: 15);
                          }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "4.8"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "2590"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "Yorumlar"),
                      ],
                    ),
                    SizedBox(
                      height: 20, // height20
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(
                            icon: Icons.circle_sharp,
                            text: "Normal",
                            iconColor: OtherColors.iconColor1),
                        IconAndTextWidget(
                            icon: Icons.location_on,
                            text: "1.7km",
                            iconColor: OtherColors.mainColor),
                        IconAndTextWidget(
                            icon: Icons.access_time_rounded,
                            text: "30min",
                            iconColor: OtherColors.iconColor2),
                      ],
                    ),
                  ],
    );
  }
}