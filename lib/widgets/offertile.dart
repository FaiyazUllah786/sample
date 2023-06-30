import 'package:flutter/material.dart';

class OfferTile extends StatelessWidget {
  const OfferTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        child: Stack(
          children: [
            Hero(
              tag: "OfferImg",
              child: Container(
                height: double.maxFinite,
                child: Image.network(
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    child: Center(child: Text('An Image is Here')),
                  ),
                  'https://assets.traveltriangle.com/blog/wp-content/uploads/2018/11/Canada.jpg',
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.white.withOpacity(0.1)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )),
            ),
            Container(
              margin: EdgeInsets.all(14),
              padding: EdgeInsets.all(4),
              child: Text(
                '25% OFF',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              decoration: BoxDecoration(
                color: Colors.amber.shade900,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ontario',
                          style: TextStyle(fontSize: 20, color: Colors.white),
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
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.place_outlined,
                              size: 22,
                              color: Colors.white.withOpacity(0.8),
                            ),
                            Text(
                              'Canada',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.8)),
                            ),
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            text: '\$580',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '/night',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
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
