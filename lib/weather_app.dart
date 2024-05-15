import 'package:flutter/material.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(''),
        leading: IconButton(
          onPressed: (){},
           icon: Icon(Icons.search,
           size: 30,
           color: Colors.white,
           ),
           ),
           actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Icon(Icons.menu_open_outlined,
              color: Colors.white,
              size: 30,),
            )
           ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/galaxy.jpeg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}