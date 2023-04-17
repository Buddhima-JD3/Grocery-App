import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Illustration
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
            child: Image.asset(
              'lib/images/illustration.png',
              width: 400.0, 
              height: 400.0,
            ),
          ),

          // Title
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Order your favourite fruits',
              style: GoogleFonts.poppins(
                fontSize: 40.0,
                height: 1.2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Subtitle
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Eat fresh fruits and try to be healthy',
                style: GoogleFonts.poppins(
                  fontSize: 18.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const Spacer(),

          // Next Button
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.yellow[600],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
