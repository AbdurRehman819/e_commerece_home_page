import 'package:flutter/material.dart';
import 'package:landingscreenpage/components/banner.dart';
import 'package:landingscreenpage/components/chip.dart';
import 'package:landingscreenpage/components/custom_card_category%20.dart';
import 'package:landingscreenpage/components/custom_card_icons.dart';
import 'package:landingscreenpage/components/custom_text_field.dart';
import 'package:landingscreenpage/components/product.dart';
import 'package:landingscreenpage/data.dart';
import 'package:landingscreenpage/utils/colors.dart';
import 'package:landingscreenpage/utils/spacing.dart';

class LandingSreen extends StatelessWidget {
  const LandingSreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            //appbar
            Row(
              children: [
                const Expanded(
                  child: CustomTextField(),
                ),
                hspace,
                const CustomIConCard(
                  icon: Icon(Icons.discount_outlined),
                ),
                hspace,
                const CustomIConCard(
                  icon: Icon(Icons.wallet),
                ),
              ],
            )

            //  banner
            ,
            vspace,
            vspace, vspace, vspace,
            vspace,
            CustomBanner(
              h: 170,
              w: size.width,
            ),

            vspace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.pink, fontSize: 20),
                )
              ],
            ),

            //Categories
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: categoryData.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return CustomCategoryCard(
                      icon: categoryData[i]["Icon"],
                      text: categoryData[i]["text"],
                    );
                  }),
            ),

            Row(
              children: [
                const Text(
                  "Exclusive",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                hspace,
                const CostumChip(),
              ],
            ),
            vspace,
            GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (context, index) {
                  return ProductCard(
                    BGPro: products[index]["Product"],
                  );
                })
          ]),
        ),
      ),
    );
  }
}
