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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                                child: Image.asset(
                                    'Assets/Images/doctor${index+1}.jpg',
                                    height: h*.22,
                                    width: w*.55,
                                    fit: BoxFit.cover,
                                    ),
                                                                      
                                    ),
                          ),
                        )
                      ],
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
