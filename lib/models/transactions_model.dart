// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/Utils/utils_size.dart';
import 'package:flutter/material.dart';

class TransactionsModel extends StatelessWidget {
  const TransactionsModel(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.price,
      this.bgColor})
      : super(key: key);
  final String image;
  final String title;
  final String subTitle;
  final String price;
  final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(3)),
                height: getProportionateScreenHeight(45),
                width: getProportionateScreenHeight(45),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(image),
              ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: style1(
                      black.withOpacity(0.7),
                      getProportionateScreenWidth(16),
                      FontWeight.bold,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: style1(
                      grey,
                      getProportionateScreenWidth(14),
                      FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            price,
            style: style1(
              grey,
              getProportionateScreenWidth(16),
              FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  static List<TransactionsModel> transactionList = [
    const TransactionsModel(
      image: "assets/images/mtn.png",
      title: "MTN NG",
      subTitle: "Airtime Topup 4:12pm",
      price: "-N800.00",
      bgColor: mtnColor,
    ),
    const TransactionsModel(
      image: "assets/images/airtel.png",
      title: "AIRTEL NG",
      subTitle: "Airtime Topup 4:12pm",
      price: "-N500.00",
      bgColor: airtelColor,
    ),
    const TransactionsModel(
      image: "assets/images/dstv.jpg",
      title: "DSTV",
      subTitle: "Cable Tv Subscription 9:12pm",
      price: "-N10,000.00",
      bgColor: blueColor,
    ),
    const TransactionsModel(
      image: "assets/images/airtel.png",
      title: "AIRTEL NG",
      subTitle: "Airtime Topup 4:12pm",
      price: "-N500.00",
      bgColor: airtelColor,
    ),
    const TransactionsModel(
      image: "assets/images/mtn.png",
      title: "MTN NG",
      subTitle: "Airtime Topup 4:12pm",
      price: "-N800.00",
      bgColor: mtnColor,
    ),
    const TransactionsModel(
      image: "assets/images/airtel.png",
      title: "AIRTEL NG",
      subTitle: "Airtime Topup 4:12pm",
      price: "-N500.00",
      bgColor: airtelColor,
    ),
    const TransactionsModel(
      image: "assets/images/dstv.jpg",
      title: "DSTV",
      subTitle: "Cable Tv Subscription 9:12pm",
      price: "-N10,000.00",
      bgColor: blueColor,
    ),
    const TransactionsModel(
      image: "assets/images/airtel.png",
      title: "AIRTEL NG",
      subTitle: "Airtime Topup 4:12pm",
      price: "-N500.00",
      bgColor: airtelColor,
    ),
    const TransactionsModel(
      image: "assets/images/mtn.png",
      title: "MTN NG",
      subTitle: "Airtime Topup 4:12pm",
      price: "-N800.00",
      bgColor: mtnColor,
    ),
    const TransactionsModel(
      image: "assets/images/mtn.png",
      title: "MTN NG",
      subTitle: "Airtime Topup 4:12pm",
      price: "-N800.00",
      bgColor: mtnColor,
    ),
    const TransactionsModel(
      image: "assets/images/dstv.jpg",
      title: "MTN NG",
      subTitle: "Cable Tv Subscription 9:12pm",
      price: "-N10,000.00",
      bgColor: blueColor,
    ),
  ];
}
