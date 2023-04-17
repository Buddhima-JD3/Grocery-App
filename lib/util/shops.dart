import 'package:flutter/material.dart';

class nearYouCard extends StatelessWidget {
  final String shopName;
  final String time;
  final String shopLogo;
  final double rating;
  final double distance;

  nearYouCard({
    required this.shopName,
    required this.time,
    required this.shopLogo,
    required this.rating,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 20,
                padding: EdgeInsets.all(5),
                color: Colors.grey[300],
                child: Image.asset(shopLogo),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(shopName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(time),
              ],
            ),
            Text(rating.toStringAsFixed(2)),
            Text(distance.toStringAsFixed(2)),
          ])),
    );
  }
}
