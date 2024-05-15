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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 150, ),
                            Text(
                              'Comilla',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              
                            ) ),
                            SizedBox(height: 5,),
                            Text('07:50 PM - Monday, 9 Nov 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '24\u2103',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 85,
                              fontWeight: FontWeight.w300,
                              
                            ), ),
                            Row(
                              children: [
                                Icon(Icons.mode_night_outlined,color: Colors.white,size: 34,),
                                SizedBox(width: 10,),
                            Text('Night',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),),
                              ],
                            ),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white
                          )
                        ),
                      ),
                      Row(
                        children: [
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
