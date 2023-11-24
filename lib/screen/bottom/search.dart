import 'package:flutter/material.dart';

import '../../new/search.dart';
import '../../widget/app_bar.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBarWidget(context: context),
      body: Center(
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200.0,
          children: <Widget>[
            search('images/brinjal.jpg','https://en.wikipedia.org/wiki/Eggplant', "Brinjal", context ),
            search('images/corn.png' ,'https://en.wikipedia.org/wiki/Maize', "Corn", context),
            search('images/wheat (1).png' ,'https://en.wikipedia.org/wiki/Wheat', "Wheat", context),
            search('images/tomato (2).png' ,'https://en.wikipedia.org/wiki/Tomato',"Tomato", context),
            search('images/onion (1).png' ,'https://en.wikipedia.org/wiki/Onion',"Onion", context),
            search('images/cucumber (4).png' ,'https://en.wikipedia.org/wiki/Cucumber',"Cucumber", context),
            search('images/pear.png' ,'https://en.wikipedia.org/wiki/Pear',"Pear", context),
            search('images/cauliflower.png' ,'https://en.wikipedia.org/wiki/Cauliflower',"Cauliflower", context),
            search('images/cantaloupe.png' ,'https://en.wikipedia.org/wiki/Cantaloupe',"Cantaloupe", context),
            search('images/breadfruit.png' ,'https://en.wikipedia.org/wiki/Breadfruit',"Breadfruit", context),
            search('images/calabash.png' ,'https://en.wikipedia.org/wiki/Calabash',"Calabash", context),
            search('images/ElephantFootYam.jpg' ,'https://en.wikipedia.org/wiki/Amorphophallus_paeoniifolius',"Elephant \n Foot Yam", context),
            search('images/safflower.png' ,'https://en.wikipedia.org/wiki/Safflower',"Safflower", context),
            search('images/zinnia.png' ,'hhttps://en.wikipedia.org/wiki/Zinnia',"Zinnia", context),
            search('images/yucca.png' ,'https://en.wikipedia.org/wiki/Cassava',"Cassava", context),
            search('images/custard-appel.png' ,'https://en.wikipedia.org/wiki/Custard_apple',"Custard Apple", context),
            search('images/colocasia-esculenta.png' ,'https://en.wikipedia.org/wiki/Colocasia',"Colocasia", context),
            search('images/cucurbits.jpg' ,'https://en.wikipedia.org/wiki/Cucurbitaceae',"Cucurbits", context),
            search('images/dioscorea.jpg' ,'https://en.wikipedia.org/wiki/Dioscorea',"Dioscorea", context),
            search('images/fenugreek.jpg' ,'https://en.wikipedia.org/wiki/Fenugreek',"Fenugreek", context),
            search('images/linseed.jpg' ,'https://en.wikipedia.org/wiki/Flax',"Linseed", context),
            //search('images/Peari millet.jpg' , 'https://en.wikipedia.org/wiki/Cotton',"Peari Millet", context),
            search('images/pulses.webp' , 'https://en.wikipedia.org/wiki/Legume',"Pulses", context),
            search('images/rice.png' , 'https://en.wikipedia.org/wiki/Rice', "Rice", context),
            //search('images/so.png' , 'https://en.wikipedia.org/wiki/Cotton', "Corn", context),
            search('images/Soybean.png' , 'https://en.wikipedia.org/wiki/Soybean', "SoyBean", context),
            search('images/Tea.png' , 'https://en.wikipedia.org/wiki/Tea', "Tea", context),
            search('images/cotton.png' , 'https://en.wikipedia.org/wiki/Cotton', "Cotton", context),
            //Container(padding: const EdgeInsets.all(8), child: const Text('Eighth', style: TextStyle(fontSize: 20)), color: Colors.lightGreenAccent,),
          ],
        ),
      ),
    );
  }
}
