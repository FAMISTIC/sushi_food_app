import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_shop_fyp_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 138, 60, 55),
        body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 10),
                Text(
                  "SUSHI MAN",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset('assets/images/egg_sushi.png'),
                ),
                const SizedBox(height: 10),
                Text(
                  "THE TASTE OF JAPANESE FOOD",
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 25, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  "Feel the taste of the most popular Japanese food from anywhere and anytime",
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 25, color: Colors.white),
                ),
                const SizedBox(height: 10),
                MyButton(
                  text: "Get Started",
                  onTap: () {
                    Navigator.pushNamed(context, '/menupage');
                  },
                )
              ],
            )));
  }
}
