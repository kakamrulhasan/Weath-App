import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_31/single_weather.dart';
import 'package:flutter_application_31/slider_dot.dart';
import 'package:flutter_application_31/weather_locations.dart';

class WeatherApp extends StatefulWidget {
  WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int _currentPage = 0;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String bgImg;
    if (locationList[_currentPage].weatherType == 'sunny') {
      bgImg = 'assets/sunny.jpg';
    } else if (locationList[_currentPage].weatherType == 'Haze') {
      bgImg = 'assets/winter.jpg';
    } else if (locationList[_currentPage].weatherType == 'rain') {
      bgImg = 'assets/rains.jpg';
    } else {
      bgImg = 'assets/galaxy.jpeg';
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(''),
        leading: IconButton(
          onPressed: () {
            Text('clicked');
          },
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () => print('manu clicked'),
              child: Icon(
                Icons.menu_open_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              bgImg,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black12),
            ),
            Container(
              margin: EdgeInsets.only(top: 140, left: 15),
              child: Row(
                children: [
                  for (int i = 0; i < locationList.length; i++)
                    if (i == _currentPage) SliderDot(true) else SliderDot(false)
                ],
              ),
            ),
            PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: locationList.length,
              itemBuilder: (context, index) => SingleWeather(index),
              onPageChanged: _onPageChanged,
            ),
          ],
        ),
      ),
    );
  }
}
