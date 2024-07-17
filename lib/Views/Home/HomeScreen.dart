import 'package:doctor_appointment/Core/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// ignore: must_be_immutable
class Homescreen extends StatelessWidget {
  List categories = ["Eye", "Ear", "Brain", "Dental", "Heart"];

  List<Icon> categoriesIcons = [
    Icon(
      MdiIcons.eye,
      color: kVeryWhitheColor,
    ),
    Icon(
      MdiIcons.earHearing,
      color: kVeryWhitheColor,
    ),
    Icon(
      MdiIcons.brain,
      color: kVeryWhitheColor,
    ),
    Icon(
      MdiIcons.toothOutline,
      color: kVeryWhitheColor,
    ),
    Icon(
      MdiIcons.heart,
      color: kVeryWhitheColor,
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
                padding: const EdgeInsets.all(7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('Assets/Images/images.jpeg'),
                              ),
                              const Icon(
                                Icons.notifications_outlined,
                                color: kVeryWhitheColor,
                                size: 30,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Hi , Ayla",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: kVeryWhitheColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Your Health is our \nFirst Priority",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: kVeryWhitheColor),
                          ),
                          Container(
                            height: H * .08,
                            width: W,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 15, bottom: 20),
                            decoration: BoxDecoration(
                                color: kGreyColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                autocorrect: true,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(),
                                    hintText: "Search here....",
                                    suffixIcon: Icon(
                                      Icons.search,
                                      size: 27,
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
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
