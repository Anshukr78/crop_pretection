import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:weather/weather.dart';

import '../../backend/constant_value.dart';
import '../../helper/color.dart';
import '../../helper/text_style.dart';
import '../../new/state.dart';

class ResultPage extends StatefulWidget {
  final double lat, long;
  final String area;
  final String states,soil;

  const ResultPage({super.key, required this.lat, required this.long, required this.area, required this.states, required this.soil});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  WeatherFactory wf = WeatherFactory(weatherKey);
  String? temperature,
      weatherCondition,
      areaName,
      humidity,
      windSpeed,
      cloudiness,
      tempMax,
      tempMin;

  bool loader = false;
  captureWeather(double latitude, double longitude) async {

    setState(() {
      loader =true;
    });

    List<Weather> w = await wf.fiveDayForecastByLocation(latitude, longitude);

    setState(() {
      temperature = w[4].temperature!.celsius!.toStringAsFixed(0);
      weatherCondition = w[4].weatherIcon;
      areaName = w[4].areaName;
      humidity = w[4].humidity!.toStringAsFixed(0);
      windSpeed = w[4].windSpeed!.toStringAsFixed(0);
      cloudiness = w[4].cloudiness!.toStringAsFixed(0);
      tempMax = w[4].tempMax!.celsius!.toStringAsFixed(0);
      tempMin = w[4].tempMin!.celsius!.toStringAsFixed(0);
    });

    setState(() {
      loader =false;
    });
  }

  @override
  void initState() {
    captureWeather(widget.lat, widget.long);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.c198754(opacity: 1),
        title: Text(
          'Result Page',
          style: AppStyle.tUrbanistStyle(
            size: 15,
            spacing: 3,
            color: AppColor.cFFFFFF(opacity: 1),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: loader ? Center(child: CircularProgressIndicator()) : SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
              child: Text(
                'Weather Condition :- ',
                style: AppStyle.tUrbanistStyle(
                  size: 15,
                  spacing: 2,
                  color: AppColor.c198754(opacity: 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Card(
                    child: Container(
                      height: 250,
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
                      child: Column(
                        children: [
                          Center(
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
                                      '$areaName',
                                      style: GoogleFonts.croissantOne(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      '$temperature\u2103',
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
                          Divider(
                            color: AppColor.cFFFFFF(opacity: 0.5),
                          ),
                          SizedBox(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cloudiness',
                                      style: AppStyle.tUrbanistStyle(
                                        size: 10,
                                        spacing: 0,
                                        color: AppColor.c000000(opacity: 0.8),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '$cloudiness%',
                                      style: AppStyle.tUrbanistStyle(
                                        size: 10,
                                        spacing: 0,
                                        color: AppColor.c000000(opacity: 0.5),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Min temp :- $tempMin\u2103',
                                      style: AppStyle.tUrbanistStyle(
                                        size: 10,
                                        spacing: 0,
                                        color: AppColor.c000000(opacity: 0.5),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Max temp :- $tempMax\u2103',
                                      style: AppStyle.tUrbanistStyle(
                                        size: 10,
                                        spacing: 0,
                                        color: AppColor.c000000(opacity: 0.5),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Humidity :- $humidity%',
                                      style: AppStyle.tUrbanistStyle(
                                        size: 10,
                                        spacing: 0,
                                        color: AppColor.c000000(opacity: 0.5),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'WindSpeed :- $windSpeed km/h',
                                      style: AppStyle.tUrbanistStyle(
                                        size: 10,
                                        spacing: 0,
                                        color: AppColor.c000000(opacity: 0.5),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Text("The crop details as below which you may produce : ",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w900,
                letterSpacing: 1.30,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10,),
            CropByState(area: int.parse(widget.area), month: '', states: widget.states,),
            const Text("The most popular crops in your area is as follows : -",
              style:TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.80,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8,),
            CropBySoil(area: int.parse(widget.area), month: '', soil: widget.soil,),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
