import 'package:flutter/material.dart';
import 'package:foodies/utils/colors.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: OtherColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/baklava.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: 
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lobortis, orci et pharetra placerat, neque sapien pretium sem, quis accumsan leo risus sed lorem. Aliquam tincidunt leo quam. Nunc tellus elit, porta ut ex et, placerat lobortis nibh. Fusce ullamcorper ullamcorper risus in tincidunt. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit.. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit.. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit.. In sed nulla et dui auctor vehicula. Nullam consectetur, urna sed ultricies finibus, ipsum diam ultricies ipsum, a elementum nibh justo sed eros. Duis sit amet leo velit.'
          ),)
        ],
      ),
    );
  }
}
//bu sayfa iptal :/