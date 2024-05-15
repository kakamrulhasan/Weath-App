import 'package:flutter/material.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
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
              'assets/galaxy.jpeg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 120, ),
                          Text(
                            'Comilla',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            
                          ),
                          
                          ),
                          Text('hello',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 120, ),
                          Text(
                            'Comilla',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            
                          ),
                          
                          ),
                          Text('hello',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),)
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white
                          )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(decoration: BoxDecoration(color:  Colors.black12),)
          ],
        ),
      ),
    );
  }
}
