import 'package:flutter/widgets.dart';

List<String> plantsCat = [
  'Top',
  'Alpines & rockeries',
  'Bamboo',
  'Bedding plants',
  'Bulbs',
  'Climbers',
  'Conifers',
  'Exotics',
  'Ferns',
  'Fruit',
  'Grasses',
  'Hedging',
  'Herbs',
  'House plants',
  'Perennials',
  'Plants & pots',
  'Plants for gifts',
  'Pond plants',
  'Roses',
  'Seeds',
  'Shrubs',
  'Trees',
  'Vegetables ',
  'Wildflowers',
];

List<Map<String, dynamic>> products = [
  {
    "name": "Aloe Vera",
    "type": "OUTDOOR",
    "price": 25,
    "size": "SMALL",
    "img":"https://www.flowers.nl/contents/media/l_300800103-aloe-vera-plant-z_20180721091416.png"
  },
  {
    "name": "Spider Plant",
    "type": "INDOOR",
    "price": 25,
    "size": "SMALL",
    "img":"https://cdn.shopify.com/s/files/1/1752/4567/products/hb_spider_plant_300x300.png?v=1529444258"
  }
];
class MyColors{
  static const Color greenActive = Color(0xff2ea15e), greenInactive = Color(0xff81af8a);
}
class Strings {
  static const String lorem =
          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquid tempora non ex, repudiandae assumenda consequatur deserunt. Nobis, illo ratione aut sapiente similique aliquid quas dolor, expedita velit natus ex? Iste.",
      description = "Description",
      topPicks = "Top Picks",
      allToKnow = "All to know",
      price = "Price",
      from = "From",
      sizes = "Sizes";
}
