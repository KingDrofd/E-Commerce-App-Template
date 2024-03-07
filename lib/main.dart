import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_mobile_app/widgets/service_type_button.dart';

import 'components/types_widget.dart';
import 'widgets/actions_custom_button.dart';
import 'widgets/custom_search_bar.dart';
import 'widgets/foryou_special_card.dart';
import 'widgets/special_deal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 5,
              child: CustomSearchBar(),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  ActionsButtonAppBar(
                    onTap: () {},
                    child: const Icon(Icons.shopping_bag_outlined),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ActionsButtonAppBar(
                    onTap: () {},
                    child: const Icon(Icons.notifications_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SpecialDealWidget(
              title: "A Summer Surprise",
              subTitle: "Cashback 20%",
            ),
            Gap(30),
            TypesWidgetComponent(),
            Gap(30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Special for you",
                      style: GoogleFonts.notoSans(fontSize: 18),
                    ),
                    Text(
                      "See More",
                      style: GoogleFonts.notoSans(
                          fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Gap(20),
                SizedBox(
                  height: 110,
                  child: ListView(
                    clipBehavior: Clip.none,
                    controller: PageController(
                      viewportFraction: 1,
                    ),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ForYouSpecialCard(
                        title: "Smartphones",
                        subTitle: "18 Brands",
                      ),
                      Gap(20),
                      ForYouSpecialCard(
                        title: "Fashion",
                        subTitle: "7 Brands",
                        img:
                            "https://i.pinimg.com/originals/91/04/94/91049435610064a7000c43bf0490cc99.jpg",
                      ),
                      Gap(20),
                      ForYouSpecialCard(
                        title: "Video Games",
                        subTitle: "30 brands",
                        img:
                            "https://blog.soltekonline.com/content/images/2021/05/most-popular-video-games-of-2020-1582141293.png",
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
