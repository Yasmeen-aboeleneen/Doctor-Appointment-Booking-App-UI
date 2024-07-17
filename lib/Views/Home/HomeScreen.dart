import 'package:doctor_appointment/Core/Constants/Colors.dart';
import 'package:doctor_appointment/Views/Widgets/doctors_section.dart';
import 'package:doctor_appointment/Views/Widgets/search-section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// ignore: must_be_immutable
class Homescreen extends StatelessWidget {
  List categories = ["Eye", "Ear", "Brain", "Dental", "Heart"];

  List<Icon> categoriesIcons = [
    Icon(
      MdiIcons.eye,
      color: kVeryWhitheColor,
      size: 27,
    ),
    Icon(
      MdiIcons.earHearing,
      color: kVeryWhitheColor,
      size: 27,
    ),
    Icon(
      MdiIcons.brain,
      color: kVeryWhitheColor,
      size: 27,
    ),
    Icon(
      MdiIcons.toothOutline,
      color: kVeryWhitheColor,
      size: 27,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: kVeryWhitheColor,
      size: 27,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kVeryWhitheColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: H * .3,
                width: W,
                decoration: const BoxDecoration(
                    color: kPurpleColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('Assets/Images/images.jpeg'),
                              ),
                               Icon(
                                Icons.notifications_outlined,
                                color: kVeryWhitheColor,
                                size: 30,
                              ),
                            ],
                          ),
                            SizedBox(
                            height: 10,
                          ),
                           Text(
                            "Hi , Ayla",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: kVeryWhitheColor),
                          ),
                            SizedBox(
                            height: 10,
                          ),
                           Text(
                            "Your Health is our \nFirst Priority",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: kVeryWhitheColor),
                          ),
                            SearchSection()
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: W * .05,
                            fontWeight: FontWeight.w500,
                            color: kBlackColor),
                      ),
                    ),
                    SizedBox(
                      height: H * .01,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        height: H * .2,
                        width: W,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  height: H * .08,
                                  width: W * .18,
                                  decoration: const BoxDecoration(
                                      color: kGreyColor,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: categoriesIcons[index],
                                  ),
                                ),
                                Text(
                                  categories[index],
                                  style: TextStyle(
                                      color: kPurpleColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: W * .05),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 5),
                      child: Text(
                        'Doctors',
                        style: TextStyle(
                            color: kBlackColor,
                            fontSize: W * .05,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const DoctorsSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
