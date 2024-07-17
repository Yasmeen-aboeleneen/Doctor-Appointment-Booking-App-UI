import 'package:flutter/material.dart';

import '../../Core/Constants/Colors.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h * .08,
      width: w,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 15, bottom: 20),
      decoration: BoxDecoration(
          color: kGreyColor, borderRadius: BorderRadius.circular(25)),
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
    );
  }
}
