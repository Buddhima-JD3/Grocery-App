import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final double itemPrice;
  final String itemImage;
  final String itemCardColour;

  ItemCard({
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
    required this.itemCardColour,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
            width: 140,
            padding: EdgeInsets.all(12),
            color: Color(int.parse(itemCardColour)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(itemName,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color:
                              Colors.black, // Change the text color as needed
                        )),
                    Text('\$' + itemPrice.toStringAsFixed(2) + ' each'),
                  ],
                ),
                Spacer(),
                Container(
                  height: 47,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(itemImage),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
