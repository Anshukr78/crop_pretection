import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/size.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:crop_pretection/new/data_value_container.dart';
import 'package:flutter/material.dart';

import 'data_value.dart';

class CropByState extends StatelessWidget {
  final int area;
  final String month, states;

  const CropByState({
    super.key,
    required this.area,
    required this.month,
    required this.states,
  });

  @override
  Widget build(BuildContext context) {
    if (states == "6" ||
        states == "2" ||
        states == "17" ||
        states == "24" ||
        states == "16" ||
        states == "20") {
      return Column(
        children: [
          Text(
            "Fruits",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context, MediaQuery.of(context).size.height/4),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/mango.png', titles: 'Mango'),
                ProductContainer(image: 'images/guava.png', titles: 'Guava'),
                ProductContainer(
                    image: 'images/strawberry.png', titles: 'Straw Berry'),
                ProductContainer(
                    image: 'images/custard-appel.png', titles: 'Custard Apple'),
                ProductContainer(image: 'images/bananas.png', titles: 'Banana'),
                ProductContainer(image: 'images/berry.png', titles: 'Ber'),
                ProductContainer(image: 'images/papaya.png', titles: 'Papaya'),
                ProductContainer(image: 'images/peach.png', titles: 'Peach'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context, MediaQuery.of(context).size.height/4),
          Text(
            "Vegetables",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/potato.png', titles: 'Potato'),
                ProductContainer(
                    image: 'images/onion (1).png', titles: 'Onion'),
                ProductContainer(
                    image: 'images/brinjal.jpg', titles: 'Brinjal'),
                ProductContainer(
                    image: 'images/cabbage.png', titles: 'Cabbage'),
                ProductContainer(
                    image: 'images/capsicum.png', titles: 'Capsicum'),
                ProductContainer(
                    image: 'images/cauliflower.png', titles: 'Cauliflower'),
                ProductContainer(
                    image: 'images/chilli (1).png', titles: 'Chilli'),
                ProductContainer(
                    image: 'images/tomato (2).png', titles: 'Tomato'),
                ProductContainer(image: 'images/peas.png', titles: 'Peas'),
                ProductContainer(
                    image: 'images/green-beans.png', titles: 'Beans'),
                ProductContainer(
                    image: 'images/root crop.jpg', titles: 'Root Crop'),
                ProductContainer(
                    image: 'images/leafy vegetables.jpg',
                    titles: 'Leafy vegetables'),
                ProductContainer(
                    image: 'images/cucurbits.jpg', titles: 'Cucurbits'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Traditional",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/potato.png', titles: 'Potato'),
                ProductContainer(
                    image: 'images/dioscorea.jpg', titles: 'Dioscorea'),
                ProductContainer(
                    image: 'images/colocasia-esculenta.png',
                    titles: 'Colocasia'),
                ProductContainer(
                    image: 'images/ElephantFootYam.jpg',
                    titles: 'Elephant Foot Yam'),
                ProductContainer(image: 'images/yucca.png', titles: 'Cassava'),
                ProductContainer(image: 'images/yucca.png', titles: 'Cassava'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Flowers",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(
                    image: 'images/carnation.png', titles: 'Carnation'),
                ProductContainer(
                    image: 'images/gerbera.png', titles: 'Gerbera'),
                ProductContainer(image: 'images/rose.png', titles: 'Rose'),
                ProductContainer(
                    image: 'images/chrysanthemum (1).png',
                    titles: 'Chrysanthemum'),
                ProductContainer(
                    image: 'images/marigold.png', titles: 'MariGold'),
                ProductContainer(
                    image: 'images/marigold.png', titles: 'MariGold'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Spices",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/ginger.png', titles: 'Ginger'),
                ProductContainer(
                    image: 'images/turmeric.png', titles: 'Turmeric'),
                ProductContainer(
                    image: 'images/fenugreek.jpg', titles: 'Fenugreek'),
              ],
            ),
          ),
        ],
      );
    } else if (states == "15 " || states == "7" || states == "9") {
      return Column(
        children: [


          Text(
            "Fruits",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/guava.png', titles: 'Guava'),
                ProductContainer(image: 'images/bananas.png', titles: 'Banana'),
                ProductContainer(image: 'images/papaya.png', titles: 'Papaya'),
                ProductContainer(image: 'images/custard-appel.png', titles: 'Custard Apple'),
                ProductContainer(image: 'images/lime.png', titles: 'Tube Rose'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Vegetables",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/brinjal.jpg', titles: 'Brinjal'),
                ProductContainer(image: 'images/cabbage.png', titles: 'Cabbage'),
                ProductContainer(image: 'images/capsicum.png', titles: 'Capsicum'),
                ProductContainer(image: 'images/cauliflower.png', titles: 'Cauliflower'),
                ProductContainer(image: 'images/chilli (1).png', titles: 'Chilli'),
                ProductContainer(image: 'images/tomato (2).png', titles: 'Tomato'),
                ProductContainer(image: 'images/peas.png', titles: 'Peas'),
                ProductContainer(image: 'images/green-beans.png', titles: 'Beans'),
                ProductContainer(image: 'images/root crop.jpg', titles: 'Root Crop'),
                ProductContainer(image: 'images/leafy vegetables.jpg', titles: 'Leafy vegetables'),
                ProductContainer(image: 'images/cucurbits.jpg', titles: 'Cucurbits'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Traditional",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/potato.png', titles: 'Potato'),
                ProductContainer(image: 'images/yucca.png', titles: 'Cassava'),
                ProductContainer(image: 'images/ElephantFootYam.jpg', titles: 'Elephant Foot Yam'),
                ProductContainer(image: 'images/colocasia-esculenta.png', titles: 'Colocasia'),
                ProductContainer(image: 'images/dioscorea.jpg', titles: 'Dioscorea'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Flowers",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/rose.png', titles: 'Rose'),
                ProductContainer(image: 'images/chrysanthemum (1).png', titles: 'Chrysanthemum'),
                ProductContainer(image: 'images/marigold.png', titles: 'MariGold'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Spices",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/turmeric.png', titles: 'Turmeric'),
                ProductContainer(image: 'images/ginger.png', titles: 'Ginger'),
                ProductContainer(image: 'images/fenugreek.jpg', titles: 'Fenugreek'),
              ],
            ),
          ),
          SizedMedia.widthDivide(context,100),

        ],
      );
    } else if (states == "11" ||
        states == "8" ||
        states == "1" ||
        states == "21") {
      return Column(
        children: [
          Text(
            "Fruits",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/lime.png', titles: 'Acid Lime'),
                ProductContainer(image: 'images/kinnow.png', titles: 'Kinnow'),
                ProductContainer(image: 'images/guava.png', titles: 'Guava'),
                ProductContainer(image: 'images/mango.png', titles: 'Mango'),
                ProductContainer(image: 'images/berry.png', titles: 'Ber'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Vegetables",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/potato.png', titles: 'Potato'),
                ProductContainer(image: 'images/onion (1).png', titles: 'Onion'),
                ProductContainer(image: 'images/brinjal.jpg', titles: 'Brinjal'),
                ProductContainer(image: 'images/cabbage.png', titles: 'Cabbage'),
                ProductContainer(image: 'images/capsicum.png', titles: 'Capsicum'),
                ProductContainer(image: 'images/cauliflower.png', titles: 'Cauliflower'),
                ProductContainer(image: 'images/chilli (1).png', titles: 'Chilli'),

                ProductContainer(image: 'images/tomato (2).png', titles: 'Tomato'),

                ProductContainer(image: 'images/peas.png', titles: 'Peas'),

                ProductContainer(image: 'images/green-beans.png', titles: 'Beans'),
                ProductContainer(image: 'images/root crop.jpg', titles: 'Root Crop'),

                ProductContainer(image: 'images/leafy vegetables.jpg', titles: 'Leafy vegetables'),

                ProductContainer(image: 'images/cucurbits.jpg', titles: 'Cucurbits'),


              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Flowers",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/marigold.png', titles: 'MariGold'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Spices",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/turmeric.png', titles: 'Turmeric'),
                ProductContainer(image: 'images/ginger.png', titles: 'Ginger'),
                ProductContainer(image: 'images/fenugreek.jpg', titles: 'Fenugreek'),
              ],
            ),
          ),
          SizedMedia.widthDivide(context,100),





        ],
      );
    } else if (states == "22" ||
        states == "5" ||
        states == "3" ||
        states == "4" ||
        states == "2") {
      return Column(
        children: [
          Text(
            "Fruits",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/guava.png', titles: 'Guava'),

                ProductContainer(image: 'images/custard-appel.png', titles: 'Custard Apple'),
                ProductContainer(image: 'images/custard-appel.png', titles: 'Custard Apple'),

                ProductContainer(image: 'images/berry.png', titles: 'Ber'),

                ProductContainer(
                    image: 'images/papaya.png', titles: 'Papaya'),

                ProductContainer(image: 'images/bananas.png', titles: 'Banana'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Vegetables",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/brinjal.jpg', titles: 'Brinjal'),
                ProductContainer(image: 'images/cabbage.png', titles: 'Cabbage'),
                ProductContainer(
                    image: 'images/capsicum.png', titles: 'Capsicum'),
                ProductContainer(
                    image: 'images/cauliflower.png', titles: 'Cauliflower'),
                ProductContainer(
                    image: 'images/chilli (1).png', titles: 'Chilli'),
                ProductContainer(
                    image: 'images/tomato (2).png', titles: 'Tomato'),

                ProductContainer(image: 'images/peas.png', titles: 'Peas'),

                ProductContainer(
                    image: 'images/green-beans.png', titles: 'Beans'),

                ProductContainer(
                    image: 'images/root crop.jpg', titles: 'Root Crop'),

                ProductContainer(
                    image: 'images/leafy vegetables.jpg',
                    titles: 'Leafy vegetables'),
                ProductContainer(
                    image: 'images/cucurbits.jpg', titles: 'Cucurbits'),

              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Traditional",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/potato.png', titles: 'Potato'),
                ProductContainer(image: 'images/yucca.png', titles: 'Cassava'),
                ProductContainer(image: 'images/ElephantFootYam.jpg', titles: 'Elephant Foot Yam'),
                ProductContainer(image: 'images/colocasia-esculenta.png', titles: 'Colocasia'),
                ProductContainer(image: 'images/dioscorea.jpg', titles: 'Dioscorea'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Flowers",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(
                    image: 'images/marigold.png', titles: 'MariGold'),

                ProductContainer(image: 'images/rose.png', titles: 'Rose'),

                ProductContainer(
                    image: 'images/chrysanthemum (1).png',
                    titles: 'Chrysanthemum'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Spices",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/ginger.png', titles: 'Ginger'),

                ProductContainer(
                    image: 'images/turmeric.png', titles: 'Turmeric'),
                ProductContainer(image: 'images/coriander.png', titles: 'Coriander')
              ],
            ),
          ),



        ],
      );
    } else if (states == "10" ||
        states == "19" ||
        states == "12" ||
        states == "13" ||
        states == "14" ||
        states == "18") {
      return Column(
        children: [
          Text(
            "Fruits",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                const ProductContainer(
                    image: 'images/mango.png', titles: 'Mango'),

                ProductContainer(image: 'images/guava.png', titles: 'Guava'),

                const ProductContainer(image: 'images/berry.png', titles: 'Ber'),
                //containers('images/chilli.png', "Ber", a),

                ProductContainer(image: 'images/custard-appel.png', titles: 'Custard Apple'),
                //containers('images/chilli.png', "Custard apple", a),

                ProductContainer(image: 'images/lime.png', titles: 'Acid Lime'),
                ProductContainer(image: 'images/bananas.png', titles: 'Banana'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Vegetables",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/brinjal.jpg', titles: 'Brinjal'),
                ProductContainer(image: 'images/cabbage.png', titles: 'Cabbage'),
                ProductContainer(image: 'images/capsicum.png', titles: 'Capsicum'),
                ProductContainer(
                    image: 'images/cauliflower.png', titles: 'Cauliflower'),

                ProductContainer(
                    image: 'images/chilli (1).png', titles: 'Chilli'),
                ProductContainer(
                    image: 'images/tomato (2).png', titles: 'Tomato'),

                ProductContainer(image: 'images/peas.png', titles: 'Peas'),

                ProductContainer(
                    image: 'images/green-beans.png', titles: 'Beans'),

                ProductContainer(
                    image: 'images/root crop.jpg', titles: 'Root Crop'),
                //containers('images/chilli.png', "Root crop", a),

                ProductContainer(
                    image: 'images/leafy vegetables.jpg',
                    titles: 'Leafy vegetables'),
                ProductContainer(
                    image: 'images/cucurbits.jpg', titles: 'Cucurbits'),

              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Traditional",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(
                    image: 'images/sweet-potato.png', titles: 'Sweet Potato'),

                ProductContainer(image: 'images/yucca.png', titles: 'Cassava'),


                ProductContainer(
                    image: 'images/ElephantFootYam.jpg',
                    titles: 'Elephant Foot Yam'),


                ProductContainer(
                    image: 'images/colocasia-esculenta.png', titles: 'Colocasia'),


                ProductContainer(
                    image: 'images/dioscorea.jpg', titles: 'Dioscorea'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Flowers",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/rose.png', titles: 'Rose'),
                ProductContainer(
                    image: 'images/marigold.png', titles: 'MariGold'),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Spices",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/ginger.png', titles: 'Ginger'),

                ProductContainer(
                    image: 'images/turmeric.png', titles: 'Turmeric'),
                ProductContainer(image: 'images/coriander.png', titles: 'Coriander'),
              ],
            ),
          ),







        ],
      );
    } else if (states == "16" || states == "24") {
      return Column(
        children: [

          Row(
            children: [

            ],
          ),
          SizedMedia.widthDivide(context, 15),
          const Text(
            "Flowers ",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color(0xff198754),
              fontSize: 20,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w900,
              letterSpacing: 1.30,
            ),
          ),
          SizedMedia.widthDivide(context,100),
          Row(
            children: [

            ],
          ),










          Text(
            "Fruits",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/strawberry.png', titles: 'Straw Berry'),

                ProductContainer(image: 'images/strawberry.png', titles: 'Straw Berry'),
                ProductContainer(
                    image: 'images/peach.png', titles: 'Peach'),
                ProductContainer(image: 'images/plum.png', titles: 'Plum'),
                ProductContainer(image: 'images/pear.png', titles: 'Pear'),
                ProductContainer(image: 'images/guava.png', titles: 'Guava'),

              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),
          Text(
            "Vegetables",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/potato.png', titles: 'Potato'),
                ProductContainer(image: 'images/brinjal.jpg', titles: 'Brinjal'),
                ProductContainer(image: 'images/cabbage.png', titles: 'Cabbage'),
                ProductContainer(image: 'images/capsicum.png', titles: 'Capsicum'),
                ProductContainer(image: 'images/cauliflower.png', titles: 'Cauliflower'),
                ProductContainer(image: 'images/broccoli.png', titles: 'Broccoli'),
                ProductContainer(image: 'images/chilli (1).png', titles: 'Chilli'),
                ProductContainer(image: 'images/tomato (2).png', titles: 'Tomato'),
                ProductContainer(image: 'images/peas.png', titles: 'Peas'),
                ProductContainer(
                    image: 'images/green-beans.png', titles: 'Beans'),
                ProductContainer(
                    image: 'images/root crop.jpg', titles: 'Root Crop'),
                ProductContainer(
                    image: 'images/leafy vegetables.jpg',
                    titles: 'Leafy vegetables'),
                ProductContainer(
                    image: 'images/cucurbits.jpg', titles: 'Cucurbits'),
              ],
            ),
          ),

          SizedMedia.heightDivide(context,100),
          Text(
            "Flowers",
            style: AppStyle.tUrbanistStyle(
              size: 20,
              spacing: 5,
              color: AppColor.c198754(opacity: 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedMedia.heightDivide(context,100),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/terrestrial.jpg', titles: 'Terrestrial',),
                ProductContainer(image: 'images/terrestrial.jpg', titles: 'Terrestrial',),
                ProductContainer(image: 'images/bulbous.jpg', titles: 'Bulbous',),
                ProductContainer(
                  image: 'images/chrysanthemum (1).png',
                  titles: 'Chrysanthemum',
                ),
              ],
            ),
          ),
          SizedMedia.heightDivide(context,100),









        ],
      );
    } else {
      return const Text("no data formed");
    }
  }
}


class CropBySoil extends StatelessWidget {
  final int area;
  final String month, soil;
  const CropBySoil({super.key, required this.area, required this.month, required this.soil});

  @override
  Widget build(BuildContext context) {
    if(soil == "Red Soil"){
      return Column(
        children: [

          SizedMedia.heightDivide(context, MediaQuery.of(context).size.height/4),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/oil seeds.jpg', titles: 'OilSeeds'),
               ProductContainer(image: 'images/oil seeds.jpg', titles: 'OilSeeds'),
                ProductContainer(image: 'images/potato.png', titles: 'Potato'),
                ProductContainer(image: 'images/tobacco.png', titles: 'Tobacco'),
                ProductContainer(image: 'images/corn (3).png', titles: 'Millet'),
                ProductContainer(image: 'images/green-beans.png', titles: 'Beans'),
                ProductContainer(image: 'images/rice.png', titles: 'Rice'),
                ProductContainer(image: 'images/wheat (1).png', titles: 'Wheat'),
                ProductContainer(image: 'images/cotton.png', titles: 'Cotton'),
              ],
            ),
          ),
        ],
      );
    }
    else if(soil == "Micacious Soil"){
      return Column(
        children: [

          SizedMedia.heightDivide(context, MediaQuery.of(context).size.height/4),
          SizedBox(
            height: MediaQuery.of(context).size.height/4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ProductContainer(image: 'images/green-beans1.png', titles: 'Mung Dal'),
                ProductContainer(image: 'images/green-beans1.png', titles: 'Mung Dal'),
                ProductContainer(image: 'images/wheat (1).png', titles: 'Wheat'),
                ProductContainer(image: 'images/wheat (1).png', titles: 'Wheat'),
                ProductContainer(image: 'images/arhar dal.jpg', titles: 'Arhar Dal'),
                ProductContainer(image: 'images/corn.png', titles: 'Corn'),
                ProductContainer(image: 'images/rice.png', titles: 'Rice'),
              ],
            ),
          ),
          //
          // Row(
          //   children: [
          //     ProductContainer(image: 'images/green-beans1.png', titles: 'Mung Dal'),
          //     sizes(a,30),
          //     kurtiDal(a,area),
          //     //containers('images/chilli.png', "Kurti Dal", a),
          //   ],
          // ),
          // sizesHeight(a,20),
          // Row(
          //   children: [
          //     sizes(a,10),
          //     sargujjaDal(a,area),
          //     //containers('images/chilli.png', "Sargujja Dal", a),
          //     sizes(a,10),
          //     chana(a,area),
          //     //containers('images/chilli.png', "Chana", a),
          //     sizes(a,10),
          //     ProductContainer(image: 'images/wheat (1).png', titles: 'Wheat'),
          //   ],
          // )
        ],
      );
    }
    else if(soil == "Sandy Soil"){
      return Column(
        // children: [
        //   sizesHeight(a,15),
        //   Row(
        //     children: [
        //       sizes(a, 30),
        //       ProductContainer(image: 'images/cotton.png', titles: 'Cotton'),
        //       sizes(a,30),
        //       ProductContainer(image: 'images/wheat (1).png', titles: 'Wheat'),
        //       sizes(a,30),
        //       ProductContainer(image: 'images/rice.png', titles: 'Rice'),
        //       sizes(a,30),
        //       ProductContainer(image: 'images/green-beans.png', titles: 'Beans'),
        //       sizes(a,30),
        //       ProductContainer(image: 'images/corn (3).png', titles: 'Millet'),
        //       //containers('images/chilli.png', "Millet's", a),
        //     ],
        //   ),
        //   sizesHeight(a,20),
        //   Row(
        //     children: [
        //       sizes(a,10),
        //       ProductContainer(image: 'images/tobacco.png', titles: 'Tobacco'),
        //       //containers('images/chilli.png', "Tobacco", a),
        //       sizes(a,10),
        //       ProductContainer(image: 'images/oil seeds.jpg', titles: 'OilSeeds'),
        //       //containers('images/chilli.png', "Oilseed's", a),
        //       sizes(a,10),
        //      ProductContainer(image: 'images/potato.png', titles: 'Potato'),
        //     ],
        //   )
        // ],
      );
    }
    else if(soil == "Black Soil"){
      return Column(
        // children: [
        //   sizesHeight(a,15),
        //   Row(
        //     children: [
        //       sizes(a, 30),
        //       ProductContainer(image: 'images/cotton.png', titles: 'Cotton'),
        //       sizes(a,30),
        //       ProductContainer(image: 'images/wheat (1).png', titles: 'Wheat'),
        //       sizes(a,30),
        //       safflower(a,area),
        //       //containers('images/chilli.png', "Safflower", a),
        //       sizes(a,30),
        //       sugarcane(a,area),
        //       sizes(a,30),
        //       jowar(a,area),
        //       //containers('images/chilli.png', "Jowar", a),
        //     ],
        //   ),
        //   sizesHeight(a,20),
        //   Row(
        //     children: [
        //       sizes(a,20),
        //       ProductContainer(image: 'images/corn (3).png', titles: 'Millet'),
        //       //containers('images/chilli.png', "Millet's", a),
        //       sizes(a,20),
        //       linseed(a,area),
        //       // containers('images/chilli.png', "Linseed", a),
        //       sizes(a,20),
        //       castor(a,area),
        //       //containers('images/chilli.png', "Castor", a),
        //       sizes(a,20),
        //       ProductContainer(image: 'images/tobacco.png', titles: 'Tobacco'),
        //       //containers('images/chilli.png', "Tobacco", a),
        //     ],
        //   )
        // ],
      );
    }
    else if(soil == "Laterite Soil" ){
      return Column(
        // children: [
        //   sizesHeight(a,15),
        //   Row(
        //     children: [
        //       sizes(a, 30),
        //       ProductContainer(image: 'images/cotton.png', titles: 'Cotton'),
        //       sizes(a,30),
        //       ProductContainer(image: 'images/rice.png', titles: 'Rice'),
        //       sizes(a,30),
        //       ProductContainer(image: 'images/wheat (1).png', titles: 'Wheat'),
        //       sizes(a,30),
        //       coconut(a,area),
        //       //containers('images/chilli.png', "Coconut", a),
        //       sizes(a,30),
        //       pulses(a,area),
        //       //containers('images/chilli.png', "Pulses", a),
        //     ],
        //   ),
        //   sizesHeight(a,20),
        //   Row(
        //     children: [
        //       sizes(a,10),
        //       tea(a,area),
        //       sizes(a,10),
        //       coffee(a,area),
        //       //containers('images/chilli.png', "Coffee", a),
        //       sizes(a,10),
        //       rubber(a,area),
        //       //containers('images/chilli.png', "Rubber", a),
        //     ],
        //   )
        // ],
      );
    }
    else{
      return Center(
        child: Column(
          children: [
            const SizedBox(height: 5,),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white70,
              child: const Text("data not formed"),
            ),
            const SizedBox(height: 5,),
          ],
        ),
      );
    }
  }
}

