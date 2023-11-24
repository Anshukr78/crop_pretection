import 'package:crop_pretection/helper/size.dart';
import 'package:flutter/material.dart';


class ProductContainer extends StatelessWidget {
  final String image, titles;
  const ProductContainer({super.key, required this.image, required this.titles});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        width: AppSize.widthDivide(context, 4),
        color: Colors.white10,
        child: Column(
          children: [
            Image.asset(image,
              fit: BoxFit.fill,
              width: AppSize.widthDivide(context, 4),
              height: AppSize.heightDivide(context, 7),
            ),
            Text(titles,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}



Widget containers (
    String image,
    String titles,
    BuildContext a ,
    String contain,
    String contain2,
    int area,
    int total) {
  return Container(
    width: MediaQuery.of(a).size.width/7,
    color: Colors.white10,
    child: InkWell(
        onTap: (){
          if(titles == 'Bell Pepper' || titles == 'Berry' || titles == 'Bitter Gourd' || titles == 'Black Berry'  || titles == 'Blue Berry' || titles == 'Bougainvillea'  || titles == 'Bread Fruit'  || titles == 'Calabash' || titles == 'Carrot' || titles == 'Corn'  || titles == 'Cotton' || titles == 'Wheat'|| titles == 'Rice' || titles == 'Beans' || titles == 'Sugar Cane' || titles == 'Tea' || titles == 'Millet'|| titles == 'Tobacco'|| titles == 'OilSeeds'|| titles == 'Arhar Dal'|| titles == 'Kurti Dal'|| titles == 'Cucumber'  || titles == 'Sargujja Dal'|| titles == 'Chana' || titles == 'Jowar'|| titles == 'Safflower' || titles == 'Linseed'|| titles == 'Castor'|| titles == 'Coconut'|| titles == 'Pulse'  || titles == 'Coffee'|| titles == 'Rubber' || titles =='Root Crop'|| titles == 'Leafty vegetables'|| titles == 'Cucurbits' || titles =='Dioscorea' || titles =='Colocasia' || titles =='Terrestrial'|| titles =='Bulbous'){
            null;
          }
          else{
            // Navigator.push(
            //   a,
            //   MaterialPageRoute(
            //     builder: (context) => FinalClass(img: image, contain: contain, name: titles, contain2: contain2, total: total, area: area, ),
            //   ),
           // );
          }
        },
        child: Column(
          children: [
            Image.asset(image,
              fit: BoxFit.cover,
              width: MediaQuery.of(a).size.width/7,
              height: MediaQuery.of(a).size.width/7,
            ),
            Text(titles,
              textAlign: TextAlign.center,
            )
          ],
        )
    ),
  );
}
