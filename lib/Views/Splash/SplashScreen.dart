import 'package:doctor_appointment/Core/Constants/Colors.dart';
import 'package:doctor_appointment/Views/Home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPurpleColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('Assets/Images/doctors.png'),
            ),
            Row(
              children: <Widget>[
                const SizedBox(width: 20.0, height: 100.0),
                const Text(
                  'Stay',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: kVeryWhitheColor,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(width: 9),
                DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 38,
                      color: kVeryWhitheColor,
                      fontWeight: FontWeight.bold),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('Healthy'),
                      RotateAnimatedText('Organized'),
                    ],
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homescreen()));
              },
              child: Container(
                height: 50,
                width: 110,
                decoration: BoxDecoration(
                    color: kVeryWhitheColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Start',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kPurpleColor),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
