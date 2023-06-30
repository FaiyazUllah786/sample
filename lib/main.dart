import 'package:enefty_icons/enefty_icons.dart';
import 'package:explore/screens/offerscreen.dart';
import 'package:explore/widgets/hometiles.dart';
import 'package:explore/widgets/hotelsImage.dart';
import 'package:explore/widgets/offertile.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
      routes: {
        OfferScreen.screen: (context) => OfferScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        titleTextStyle: TextStyle(fontSize: 28, color: Colors.black),
        title: Text(
          'Where you\nwanna go?',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Card(
            elevation: 10,
            shape: CircleBorder(),
            child: IconButton(
              icon: Icon(EneftyIcons.search_normal_2_outline),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                HomeTiles(
                  icon: EneftyIcons.house_2_outline,
                  text: 'Hotel',
                ),
                HomeTiles(
                  icon: EneftyIcons.airplane_outline,
                  text: 'flight',
                ),
                HomeTiles(
                  icon: EneftyIcons.location_outline,
                  text: 'Place',
                ),
                HomeTiles(
                  icon: EneftyIcons.cake_outline,
                  text: 'Food',
                ),
                HomeTiles(
                  icon: EneftyIcons.map_outline,
                  text: 'Travel',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Popular Hotels',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                HotelsImage(
                  placenum: 0,
                  place: 'Paris',
                  country: 'London',
                  Price: '\$488',
                  rating: '4.9',
                ),
                HotelsImage(
                  placenum: 1,
                  place: 'Agra',
                  country: 'India',
                  Price: '\$200',
                  rating: '4.8',
                ),
                HotelsImage(
                  placenum: 2,
                  place: 'Berlin',
                  country: 'Germany',
                  Price: '\$800',
                  rating: '5.0',
                ),
                HotelsImage(
                  placenum: 3,
                  place: 'Bali',
                  country: 'Indonesia',
                  Price: '\$293',
                  rating: '4.8',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Hot Deals',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              child: OfferTile(),
              onTap: () {
                Navigator.pushNamed(context, OfferScreen.screen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
