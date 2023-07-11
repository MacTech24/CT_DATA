import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/screens/beneficiary_search/widget/beneficiary_search_field.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

class BeneficiarySearch extends StatelessWidget {
  const BeneficiarySearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text(
          beneficiaryText,
          style: style1(
            black,
            getProportionateScreenWidth(18),
            FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: getProportionateScreenHeight(50),
                    width: getProportionateScreenHeight(50),
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.search,
                      size: 28,
                      color: white,
                    )),
                  ),
                ),
                Expanded(child: BeneficiarySearchField())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
