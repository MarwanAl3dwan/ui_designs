import 'package:flutter/material.dart';
import 'package:ui_design/modules/products/products_components/appbar.dart';
import 'package:ui_design/modules/products/products_components/menu_item.dart';
import 'package:ui_design/shared/styles/colors.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({Key? key}) : super(key: key);

  List<Map<String, dynamic>> list = [
    {
      'text': 'All',
      'filled': true,
    },
    {
      'text': 'Marathon Runner',
      'filled': false,
    },
    {
      'text': 'Genesis',
      'filled': false,
    },
    {
      'text': 'Dice',
      'filled': false,
    },
    {
      'text': 'Shoes',
      'filled': false,
    },
    {
      'text': 'Football',
      'filled': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromRGBO(10, 10, 10, 1);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: productsAppBar(primaryColor: primaryColor),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Metaverse\nCollection",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: kPrimaryDarkTextColor, fontSize: 35),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 45,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (_, index) => TextInRectangle(
                  text: list[index]['text'],
                  filled: list[index]['filled'],
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 10),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
