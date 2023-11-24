import 'package:crop_pretection/backend/chat_screen.dart';
import 'package:crop_pretection/backend/constant_value.dart';

import 'package:crop_pretection/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/weather.dart';

import '../../functionality/form.dart';
import '../../widget/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherFactory wf = WeatherFactory(weatherKey);

  String? temperature, weatherCondition, areaName;
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
    setState(() {
      loading = true;
    });
    await determine();

    Position newPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    position = newPosition;
    placeMark =
        await placemarkFromCoordinates(position!.latitude, position!.longitude);
    setState(() {
      lat = position!.latitude;
      long = position!.longitude;
    });
    await captureWeather(lat!, long!);

    setState(() {
      loading = false;
    });
  }

  captureWeather(double latitude, double longitude) async {
    Weather w = await wf.currentWeatherByLocation(latitude, longitude);

    setState(() {
      temperature = w.temperature!.celsius!.toStringAsFixed(0);
      weatherCondition = w.weatherIcon;
      areaName = placeMark!.first.locality;
    });
  }

  @override
  void initState() {
    getCurrentLocation();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBarWidget(context: context),
      body: loading
          ? Center(
              child: CircularProgressIndicator(
                color: AppColor.c198754(opacity: 1),
              ),
            )
          : SizedBox.expand(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            getCurrentLocation();
                          },
                          child: Text(
                            position == null
                                ? 'Tap for location'
                                : '${placeMark!.first.subLocality!},${placeMark!.first.locality!}',
                            style: GoogleFonts.notoSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      getCurrentLocation();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Card(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                AppColor.c198754(opacity: 0.5),
                                AppColor.c61CE66(opacity: 0.5),
                                AppColor.c0FAF3C(opacity: 0.5),
                              ],
                            ),
                            border: Border.all(
                              color: AppColor.c198754(opacity: 0.5),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      '${areaName}',
                                      style: GoogleFonts.croissantOne(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      '${temperature}\u2103',
                                      style: GoogleFonts.notoSans(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'images/$weatherCondition.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      getCurrentLocation();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FormForDetails()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Card(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                AppColor.c198754(opacity: 0.2),
                                AppColor.c198754(opacity: 0.5),
                              ],
                            ),
                            border: Border.all(
                              color: AppColor.c198754(opacity: 0.5),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.90,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'images/image1.png',
                                  height: 200,
                                  width:
                                      MediaQuery.of(context).size.width * 0.90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Analyse Your Farming Prediction',
                                style: GoogleFonts.croissantOne(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: AppColor.c198754(opacity: 0.5),
                                  wordSpacing: 5,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.c198754(opacity: 1),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChatGPTScreen()));
        },
        child: Icon(Icons.rocket, size: 30, color: AppColor.cFFFFFF(opacity: 1),),
      ),
    );
  }
}
