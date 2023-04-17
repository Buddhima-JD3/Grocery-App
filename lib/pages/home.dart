import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/item_card.dart';
import '../util/shops.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  final List itemsList = [
    // name, price, image, color
    ['Orange', 1.99, 'lib/images/orange.png', '0xFFFEDF8D'],
    ['Apple', 1.99, 'lib/images/apple.png', '0xFFFEE3E3'],
    ['Guava', 1.99, 'lib/images/guava.png', '0xFFE1F9D9'],
  ];

  final List shopList = [
    // name, time, image, rating, distance
    ['Shopify', '09:00 - 10:00', 'lib/images/shopify.png', 3.5, 1.3],
    ['Ebay', '09:00 - 10:00', 'lib/images/ebay.png', 4.5, 1.5],
    ['Amazon', '09:00 - 10:00', 'lib/images/amazon.png', 5.5, 1.7],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu, // Use the built-in menu icon
            color: Colors.grey[700],
          ),
          onPressed: () {
            // Handle menu button press
          },
        ),
        title: Text(''),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart, // Use the built-in shopping cart icon
              color: Colors.grey[700],
            ),
            onPressed: () {
              // Handle shopping cart button press
            },
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 10),

        // greeting
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'Hey Alex,',
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 4),

        // subtitle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Find fresh fruits what you want",
            style: GoogleFonts.poppins(
              fontSize: 18.0,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        const SizedBox(height: 30),

        // Search Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 30,
                    child: Image.asset('lib/images/search.png',
                        color: Colors.grey[600]),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search fresh fruits',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 20),

        // Top Selling
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Selling',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle "See All" button press
                    },
                    child: Text(
                      'See All',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black, // Change the text color as needed
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 15),

        //Top Selling List

        Container(
            height: 100,
            child: ListView.builder(
                itemCount: itemsList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ItemCard(
                    itemName: itemsList[index][0],
                    itemPrice: itemsList[index][1],
                    itemImage: itemsList[index][2],
                    itemCardColour: itemsList[index][3],
                  );
                })),

        const SizedBox(height: 20),

        // Near You
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'Near You',
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // No of shops
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "28+ shops",
            style: GoogleFonts.poppins(
              fontSize: 18.0,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        const SizedBox(height: 20),

        // Near You List
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView.builder(
                itemCount: shopList.length,
                itemBuilder: (context, index) {
                  return nearYouCard(
                    shopName: shopList[index][0],
                    time: shopList[index][1],
                    shopLogo: shopList[index][2],
                    rating: shopList[index][3],
                    distance: shopList[index][4],
                  );
                }),
          ),
        ),
      ]),
    );
  }
}
