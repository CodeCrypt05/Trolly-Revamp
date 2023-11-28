import 'package:flutter/material.dart';
import 'package:trolly_revamp/models/categories.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

List categories_cube = [
  CategoriesModel(
    categoryName: 'Drinks',
    categoryImages: drinksImg,
    categoryBoxColor: Color.fromRGBO(255, 225, 225, 0.25),
  ),
  CategoriesModel(
    categoryName: 'Grocery',
    categoryImages: grocery,
    categoryBoxColor: Color.fromRGBO(234, 255, 225, 1),
  ),
  CategoriesModel(
    categoryName: 'Meats & Chickens',
    categoryImages: bathingEssentials,
    categoryBoxColor: Color.fromRGBO(255, 246, 225, 1),
  ),
  CategoriesModel(
    categoryName: 'Bathing Essentials',
    categoryImages: bathingEssentials,
    categoryBoxColor: Color.fromRGBO(240, 225, 255, 1),
  ),
  CategoriesModel(
    categoryName: 'Biscuits & Cookies',
    categoryImages: biscuit,
    categoryBoxColor: Color.fromRGBO(225, 255, 244, 1),
  ),
  CategoriesModel(
    categoryName: 'Snacks',
    categoryImages: snacks,
    categoryBoxColor: Color.fromRGBO(255, 224, 224, 1),
  ),
  CategoriesModel(
    categoryName: 'Makeup & Beauty',
    categoryImages: makeup,
    categoryBoxColor: Color.fromRGBO(255, 224, 244, 1),
  ),
  CategoriesModel(
    categoryName: 'Cleaning Essentials',
    categoryImages: cleaningEssentials,
    categoryBoxColor: Color.fromRGBO(225, 224, 255, 1),
  ),
];
