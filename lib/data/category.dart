import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trolly_revamp/models/category.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

List categoryPanel = [
  // CategoryModel(
  //   image: groceryImg,
  //   name: 'Grocery',
  //   textColor: HexColor('#60AB00'),
  //   subColor: const Color.fromRGBO(96, 171, 0, 0.05),
  // ),
  CategoryModel(
    image: meatsChickenImg,
    name: 'Meats & Chickens',
    textColor: HexColor('#C79B00'),
    subColor: const Color.fromRGBO(199, 155, 0, 0.05),
  ),
  CategoryModel(
    image: dairyProductsImg,
    name: 'Dairy Products',
    textColor: HexColor('#0077E7'),
    subColor: const Color.fromRGBO(0, 119, 231, 0.05),
  ),
  CategoryModel(
    image: biscuitsCookiesImg,
    name: 'Biscuits  & Cookies',
    textColor: HexColor('#60AB00'),
    subColor: const Color.fromRGBO(0, 158, 100, 0.05),
  ),
  CategoryModel(
    image: cleaningEssentialsImg,
    name: 'Cleaning Essentials',
    textColor: HexColor('#0077E7'),
    subColor: const Color.fromRGBO(96, 119, 231, 0.05),
  ),
  CategoryModel(
    image: snacksImg,
    name: 'Snacks',
    textColor: HexColor('#E70000'),
    subColor: const Color.fromRGBO(231, 0, 0, 0.05),
  ),
  CategoryModel(
    image: makeupBeautyImg,
    name: 'Makeup & Beauty',
    textColor: HexColor('#E7009A'),
    subColor: const Color.fromRGBO(231, 0, 154, 0.05),
  ),
  CategoryModel(
    image: bathingEssentialsImg,
    name: 'Bathing Essential',
    textColor: HexColor('#7300E7'),
    subColor: const Color.fromRGBO(115, 0, 231, 0.05),
  ),
];
