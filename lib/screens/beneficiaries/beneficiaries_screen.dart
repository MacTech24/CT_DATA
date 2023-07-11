import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/global_widgets/custom_drawer.dart';
import 'package:ct_data/models/beneficiary_model.dart';

import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

import '../beneficiary_search/beneficiary_search.dart';
import 'widgets/custom_text_field.dart';

class BeneficiariesScreen extends StatelessWidget {
  const BeneficiariesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(),
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
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => BeneficiarySearch(),
                    );
                    Navigator.push(context, route);
                  },
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
                InkWell(
                  onTap: () => customDialog(context),
                  child: Container(
                    height: getProportionateScreenHeight(50),
                    width: size.width * 0.55,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Center(
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: white,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(5),
                          ),
                          Expanded(
                            child: Text(
                              "Add New Beneficiaries",
                              style: style1(
                                white,
                                getProportionateScreenWidth(14),
                                FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Expanded(
                child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: BeneficiaryModel.beneficiaryList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return BeneficiaryModel.beneficiaryList[index];
                      }),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  Future<dynamic> customDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(16)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text(
                      "Add New Beneficiary",
                      style: style1(
                        black,
                        getProportionateScreenWidth(16),
                        FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 25,
                        color: blueColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                CustomTextField(
                  hintText: "Name",
                  onChanged: (value) {},
                ),
                CustomTextField(
                  hintText: "Beneficiary Number",
                  onChanged: (value) {},
                ),
                CustomTextField(
                  hintText: "Beneficiary Type",
                  onChanged: (value) {},
                ),
                CustomTextField(
                  hintText: "Service Provider",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: getProportionateScreenHeight(48),
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: MaterialButton(
                      color: blueColor,
                      onPressed: () {},
                      child: Text(
                        "Add",
                        style: style1(
                          white,
                          getProportionateScreenWidth(16),
                          FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
