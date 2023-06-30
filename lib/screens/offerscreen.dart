import 'package:enefty_icons/enefty_icons.dart';
import 'package:explore/widgets/hometiles.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class OfferScreen extends StatefulWidget {
  static const screen = '/offerscreen';
  OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            leading: Card(
              elevation: 10,
              shape: CircleBorder(),
              child: IconButton(
                icon: Icon(
                  EneftyIcons.arrow_left_4_outline,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            actions: [
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shape: CircleBorder(),
                    child: IconButton(
                      icon: Icon(
                        EneftyIcons.share_outline,
                        color: Colors.black,
                      ),
                      onPressed: null,
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: CircleBorder(),
                    child: IconButton(
                      icon: Icon(
                        EneftyIcons.heart_outline,
                        color: Colors.black,
                      ),
                      onPressed: null,
                    ),
                  ),
                ],
              )
            ],
            elevation: 0,
            pinned: true,
            centerTitle: false,
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: "OfferImg",
                child: Image.network(
                  errorBuilder: (context, error, stackTrace) => Container(
                    child: Center(child: Text('An Image is Here')),
                  ),
                  'https://assets.traveltriangle.com/blog/wp-content/uploads/2018/11/Canada.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bali Motel\nVung Tau',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(EneftyIcons.location_outline),
                                SizedBox(width: 10),
                                Text(
                                  'Indonesia',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade900,
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '(6.8K reviews)',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            text: '\$580',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '/night',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReadMoreText(
                      'Set in Vung Tau, 100 metres from Front Beach, BaLi Motel Vung Tau offers accommodation with a garden, private parking, a shared lounge and a terrace. Located around 2.3 km from Back Beach, the guest house with free WiFi is also 2.3 km away from Pineapple Beach. The accommodation provides a shared kitchen, room service and luggage storage for guests. At the guest house, all rooms are fitted with a desk. Complete with a private bathroom fitted with a bidet and free toiletries, all guest rooms at BaLi Motel Vung Tau have a flat-screen TV and air conditioning, and some rooms also offer a balcony. At the accommodation all rooms have bed linen and towels. Speaking English and Vietnamese, staff at the 24-hour front desk can help you plan your stay. Popular points of interest near BaLi Motel Vung Tau include White Palace, Express Ship Harbour and Lam Son Stadium. The nearest airport is Vung Tau Airport, 5 km from the guest house.',
                      // trimLines: 2,
                      trimLength: 140,
                      colorClickableText: Colors.amber.shade900,
                      // trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read less',
                      moreStyle:
                          TextStyle(fontSize: 14, color: Colors.amber.shade900),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'What we offer',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 120,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          HomeTiles(icon: Icons.hotel_outlined, text: '2 bed'),
                          HomeTiles(
                              icon: Icons.ramen_dining_outlined,
                              text: 'Dinner'),
                          HomeTiles(
                              icon: Icons.hot_tub_outlined, text: 'Hot Tub'),
                          HomeTiles(icon: Icons.ac_unit_outlined, text: 'AC'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hosted by',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Image.network(
                                      fit: BoxFit.cover,
                                      isAntiAlias: true,
                                      'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Harleen Smith',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber.shade900,
                                          ),
                                          Text(
                                            '4.9',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            '(6.8K reviews)',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Card(
                                  color: Colors.amber.shade900,
                                  child: IconButton(
                                    icon: Icon(
                                      EneftyIcons.message_outline,
                                      color: Colors.white,
                                    ),
                                    onPressed: null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color.fromRGBO(77, 190, 247, 1),
                          fixedSize: Size(double.maxFinite, 70)),
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
