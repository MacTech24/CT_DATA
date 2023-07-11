import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFE9F1F4),
        ),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: style1(
                blueColor,
                getProportionateScreenWidth(16),
                FontWeight.bold,
              ),
              suffixIcon: Icon(
                Icons.search,
                color: blueColor,
                size: getProportionateScreenWidth(25),
              )),
        ),
      ),
    );
  }
}
