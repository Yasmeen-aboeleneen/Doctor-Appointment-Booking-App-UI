import 'package:doctor_appointment/Core/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                                  Navigator.pop(context);
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
                                  Text(
                                    'Patients',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: kVeryWhitheColor),
                                  ),
                                  Text(
                                    '500',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: kVeryWhitheColor),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Experience',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: kVeryWhitheColor),
                                  ),
                                  Text(
                                    '10 y',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: kVeryWhitheColor),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: kVeryWhitheColor),
                                  ),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: kVeryWhitheColor),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'DR Kamilia',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: kPurpleColor),
                    ),
                    Row(
                      children: [
                        Icon(
                          MdiIcons.toothOutline,
                          color: kPurpleColor,
                          size: 29,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Dentist',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Doctor:',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor),
                    ),
                    Text(
                      ' Doctorate of Dental Medicine and Surgery.\n Cosmetic dentist',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      ' Booking Date',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kPurpleColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: h * .1,
                      width: w,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 31,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: h * .03,
                                  width: w * .15,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        index == 1 ? kPurpleColor : kGreyColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("${index + 1}",
                                          style: TextStyle(
                                              color: index == 1
                                                  ? kGreyColor
                                                  : kPurpleColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15))
                                    ],
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                    const Text(
                      ' Select Time',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kPurpleColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: h * .1,
                      width: w,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: h * .03,
                                  width: w * .15,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        index == 1 ? kPurpleColor : kGreyColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("${index + 1} pm",
                                          style: TextStyle(
                                              color: index == 1
                                                  ? kGreyColor
                                                  : kPurpleColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15))
                                    ],
                                  ),
                                )
                              ],
                            );
                          }),
                    )
                  ],
                ),
              ),
              Container(
                height: h * .05,
                width: w * .5,
                decoration: BoxDecoration(
                    color: kPurpleColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Confirm Booking',
                  style: TextStyle(
                      color: kVeryWhitheColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
