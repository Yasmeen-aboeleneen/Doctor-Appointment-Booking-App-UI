import 'package:doctor_appointment/Core/Constants/Colors.dart';
import 'package:flutter/material.dart';

class DoctorsSection extends StatelessWidget {
  const DoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10),
      height: h * .5,
      width: w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: h * .4,
                width: w * .6,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: kPurpleColor,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25)),
                            child: Image.asset(
                              'Assets/Images/doctor${index + 1}.jpg',
                              height: h * .22,
                              width: w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            height: h * .06,
                            width: w * .12,
                            decoration: const BoxDecoration(
                                color: kPurpleColor, shape: BoxShape.circle),
                            child: const Center(
                              child: Icon(
                                Icons.favorite_outline_rounded,
                                color: kVeryWhitheColor,
                                size: 27,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(4),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr Kamilia',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kVeryWhitheColor),
                            ),
                            Text(
                              'Dentist',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: kVeryWhitheColor),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_half,
                                  color: kYellowColor,
                                  size: 26,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: kGreyColor),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
