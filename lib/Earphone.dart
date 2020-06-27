import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'BookNow.dart';

class EP extends StatefulWidget {
  @override
  _EPState createState() => _EPState();
}

class _EPState extends State<EP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                    height: 300.0,
                    child: Stack(
                      children: <Widget>[
                        Carousel(
                          images: [
                            AssetImage('assets/sh.jpg'),
                            // Photo from https://unsplash.com/photos/wHUFmZRMpLc
                            AssetImage('assets/sh1.jpg'),
                            // Photo from https://unsplash.com/photos/DE9MM2voqKc
                            AssetImage('assets/sh2.jpg'),
                            // Photo from https://unsplash.com/photos/6TY_WrJTwSI
                            AssetImage('assets/sh3.jpg'),
                            // Photo from https://unsplash.com/photos/kVKz9qnJC-k
                          ],
                          dotSize: 4.0,
                          dotSpacing: 15.0,
                          autoplay: false,
                          dotColor: Colors.white,
                          indicatorBgPadding: 50.0,
                          dotBgColor: Colors.transparent,
                          borderRadius: false,
                          moveIndicatorFromBottom: 200.0,
                          noRadiusForIndicator: true,
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 270, left: 20, right: 20),
                  child: Container(
                      height: 100.0,
                      width: MediaQuery.of(context).size.width - 24.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2.0,
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2.0)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Sony Headphones',
                              style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\$16.6'),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 13.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 13.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 13.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 13.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 13.0,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, bottom: 20, left: 14),
              child: Text(
                'About Product',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ConcertOne-Regular'),
              ),
            ),
            about_product(
                '--> Digital noise cancelling : Industry leading Active Noise Cancellation (ANC) lends a personalized, virtually soundproof experience at any situation '),
            about_product(
                '--> Voice assistant : Alexa enabled (In-built) for voice access to music, information and more. Activate with a simple touch '),
            about_product(
                '--> Quick attention mode : Cover the right ear cup with your palm to turn down your music for instant, easy conversation'),
            about_product(
                '--> Smart listening : WH-1000XM3 adjusts the ambient sound to your activity to give you the best noise cancellation'),
            BookNow()
          ],
        ));
  }


  Widget about_product(
      String description,
      ) {
    return Padding(
        padding: EdgeInsets.only(left: 14, top: 6, right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              description,
              style: TextStyle(fontSize: 20, fontFamily: 'ConcertOne-Regular'),
            ),
          ],
        ));
  }
}
