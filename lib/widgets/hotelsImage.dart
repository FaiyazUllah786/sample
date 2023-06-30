import 'package:flutter/material.dart';
import '../utils/places.dart';

class HotelsImage extends StatelessWidget {
  int placenum;
  String place;
  String country;
  String Price;
  String rating;
  HotelsImage(
      {super.key,
      required this.placenum,
      required this.place,
      required this.country,
      required this.Price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(20)),
      child: Card(
        shadowColor: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        elevation: 10,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 200,
              child: Image.network(
                errorBuilder: (context, error, stackTrace) => Container(
                  child: Center(child: Text('An Image is Here')),
                ),
                places.Place[placenum],
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.white.withOpacity(0.1),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place_outlined,
                          size: 25,
                          color: Colors.white.withOpacity(0.8),
                        ),
                        Text(
                          country,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: Price,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '/night',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber.shade900,
                            ),
                            Text(
                              '4.9',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
