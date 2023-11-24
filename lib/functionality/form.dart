
import 'package:crop_pretection/helper/color.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:crop_pretection/screen/result/result_page.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/entypo.dart';

import '../component/button_widget.dart';
import '../component/textformfield.dart';


class FormForDetails extends StatefulWidget {
  const FormForDetails({super.key});

  @override
  State<FormForDetails> createState() => _FormForDetailsState();
}

class _FormForDetailsState extends State<FormForDetails> {
  String? selectedItem;

  List<String> soilList = [
    'Red Soil',
    'Sandy Soil',
    'Laterite Soil',
    'Micacious Soil',
    'Black Soil',
    'Alluvial Soil',
    'Marshy Soil',
    'Alkaline Soil'
  ];



  TextEditingController areaController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  

  InputBorder inputBorder(double colorOpacity) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: AppColor.c000000(opacity: colorOpacity),
        ),
      );



  bool loading = false;
  Position? position;
  List<Placemark>? placeMark;
  double? lat, long;

  Future<Position> determine() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return Future.error('Location not available');
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  getCurrentLocation() async {
    await determine();
    setState(() {
      loading = true;
    });
    Position newPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    position = newPosition;
    placeMark =
        await placemarkFromCoordinates(position!.latitude, position!.longitude);
    setState(() {
      lat = position!.latitude;
      long = position!.longitude;
      locationController.text =
          '${placeMark![0].street!},${placeMark![0].subLocality!},${placeMark![0].locality!},${placeMark![0].subAdministrativeArea!},${placeMark![0].administrativeArea!},${placeMark![0].postalCode!},${placeMark![0].country!}';
    });
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.c198754(opacity: 1),
        title: Text(
          'Form Fields',
          style: AppStyle.tUrbanistStyle(
            size: 15,
            spacing: 3,
            color: AppColor.cFFFFFF(opacity: 1),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Fill data for Prediction',
                    style: AppStyle.tUrbanistStyle(
                      size: 20,
                      spacing: 0,
                      color: AppColor.c198754(opacity: 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 70,
                      horizontal: MediaQuery.of(context).size.width / 15,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField2(
                        items: [
                          ...List.generate(soilList.length, (index) {
                            return DropdownMenuItem(
                              value: soilList[index],
                              child: Text(
                                soilList[index],
                                style: AppStyle.tUrbanistStyle(
                                  size: 12,
                                  spacing: 2,
                                  color: AppColor.c000000(opacity: 1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          })
                        ],
                        value: selectedItem,
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value;
                          });
                        },
                        decoration: InputDecoration(
                          // contentPadding: EdgeInsets.zero,
                          hintText: 'Choose soil type',
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Iconify(
                              Entypo.shop,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                          enabledBorder: inputBorder(0.3),
                          focusedBorder: inputBorder(0.3),
                          border: inputBorder(0.3),
                        ),
                      ),
                    ),
                  ),
                  AppTextFieldWidget(
                    hintText: 'Area that you are using for farm',
                    controller: areaController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextFormField(
                      controller: locationController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(20),
                        hintText: 'Please select your location',
                        border: inputBorder(0.3),
                        focusedBorder: inputBorder(0.3),
                        enabledBorder: inputBorder(0.3),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            getCurrentLocation();
                          },
                          child: Icon(
                            Icons.location_on,
                            color: AppColor.c198754(opacity: 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ButtonWidget(
                    text: 'Check result',
                    onTab: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                            lat: lat!,
                            long: long!, area: areaController.text.trim(), states: (locationController.text.length%28).toString(), soil: selectedItem!,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'images/fr1.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
