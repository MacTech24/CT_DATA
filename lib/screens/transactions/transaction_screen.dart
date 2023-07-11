import 'package:ct_data/constants/colors.dart';
import 'package:ct_data/constants/strings.dart';
import 'package:ct_data/global_widgets/custom_drawer.dart';
import 'package:ct_data/screens/transactions/widgets/search_field.dart';
import 'package:ct_data/utils_size.dart';
import 'package:flutter/material.dart';

import '../../models/transactions_model.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text(
          transactionText,
          style: style1(
            black,
            getProportionateScreenWidth(18),
            FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.calendar_month_outlined,
            size: 25,
            color: black,
          ),
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    size: 35,
                    color: black,
                  ),
                );
              }),
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(10),
          )
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchField(),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Expanded(
                child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: TransactionsModel.transactionList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TransactionsModel.transactionList[index];
                      }),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
