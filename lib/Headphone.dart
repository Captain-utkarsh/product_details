import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'BookNow.dart';

class HeadPhone extends StatefulWidget {
  @override
  _HeadPhoneState createState() => _HeadPhoneState();
}

class _HeadPhoneState extends State<HeadPhone> {
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
                            AssetImage('assets/bh1.jpg'),
                            // Photo from https://unsplash.com/photos/561igiTyvSk
                            AssetImage('assets/bh2.jpg'),
                            // Photo from https://unsplash.com/photos/xpDHTc-pkog
                            AssetImage('assets/bh3.jpg'),
                            // Photo from https://unsplash.com/photos/KtOid0FLjqU
                            AssetImage('assets/bh4.jpg'),
                            // Photo from https://unsplash.com/photos/Luh5Pjxg_Vs
                            AssetImage('assets/bh5.jpg'),
                            // Photo from https://unsplash.com/photos/BVd8jS5H7VU
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
                              'Bluetooh earphones',
                              style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\$22.8'),
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
                                  color: Colors.amber,
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
                '--> Superior Design: Built-in magnets let you attach the two running together when not in use,easy and safe to carry around with IPX4 rating, splashes and heavy sweat won\'t stop your workout.'),
            about_product(
                '--> Powerful Audio performance: Advanced chipset delivers premium quality sound and Bluetooth 5.0 technology ensures a skip-free listening experience with strong and reliable Bluetooth connection.'),
            about_product(
                '--> Three-button control: Earphones communicate seamlessly with your mobile device thanks to a three-button in-line remote and microphone; control your calls and music without changing your pace '),
            //Padding(
//          padding: EdgeInsets.only(top: 60, bottom: 20, left: 14),
//          child: Text(
//            'Amenities',
//            style: TextStyle(
//                fontSize: 20,
//                fontWeight: FontWeight.bold,
//                fontFamily: 'ConcertOne-Regular'),
//          ),
//        ),
//        amenities('assets/pool.png', 'assets/bed.png', 'assets/kc.png', 'Pool',
//            '6 Beds', 'Kitchen'),
            BookNow()
          ],
        ));
  }

//  Widget amenities(
//    String url1,
//    String url2,
//    String url3,
//    String features1,
//    String features2,
//    String features3,
//  ) {
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceAround,
//      children: <Widget>[
//        Container(
//            width: 76,
//            height: 76,
//            decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(40.0),
//                color: Colors.white,
//                boxShadow: [
//                  BoxShadow(
//                      offset: Offset(0, 1.0),
//                      color: Colors.grey.withOpacity(0.3),
//                      spreadRadius: 0.2)
//                ]),
//            child: Column(
//              children: <Widget>[
//                Image.asset(
//                  url1,
//                  fit: BoxFit.contain,
//                  height: 40.0,
//                  width: 40.0,
//                ),
//                SizedBox(
//                  height: 10,
//                ),
//                Text(features1)
//              ],
//            )),
//        Container(
//            width: 76,
//            height: 76,
//            decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(40.0),
//                color: Colors.white,
//                boxShadow: [
//                  BoxShadow(
//                      offset: Offset(0, 1.0),
//                      color: Colors.grey.withOpacity(0.3),
//                      spreadRadius: 0.2)
//                ]),
//            child: Column(
//              children: <Widget>[
//                Image.asset(
//                  url2,
//                  fit: BoxFit.contain,
//                  height: 40.0,
//                  width: 40.0,
//                ),
//                SizedBox(
//                  height: 10,
//                ),
//                Text(features2)
//              ],
//            )),
//        Container(
//            width: 76,
//            height: 76,
//            decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(40.0),
//                color: Colors.white,
//                boxShadow: [
//                  BoxShadow(
//                      offset: Offset(0, 1.0),
//                      color: Colors.grey.withOpacity(0.3),
//                      spreadRadius: 0.2)
//                ]),
//            child: Column(
//              children: <Widget>[
//                Image.asset(
//                  url3,
//                  fit: BoxFit.contain,
//                  height: 40.0,
//                  width: 40.0,
//                ),
//                SizedBox(
//                  height: 10,
//                ),
//                Text(features3)
//              ],
//            )),
//      ],
//    );
//  }

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
