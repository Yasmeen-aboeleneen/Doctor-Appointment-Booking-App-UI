import 'package:doctor_appointment/Core/Constants/Colors.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kVeryWhitheColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: w,
                  height: h / 2.5,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'Assets/Images/doctor1.jpg',
                          ),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          kPurpleColor.withOpacity(0.9),
                          kPurpleColor.withOpacity(0),
                          kPurpleColor.withOpacity(0)
                        ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  // Navigator.pop(context)
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: kPurpleColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: kVeryWhitheColor,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Navigator.pop(context)
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: kPurpleColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: kVeryWhitheColor,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
