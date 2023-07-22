import 'package:ct_data/global_widgets/custom_drawer.dart';
import 'package:ct_data/screens/more_cable_provider/widgets/cable_tv_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.dart';

import '../../constants/strings.dart';
import '../../Utils/utils_size.dart';

class MoreCableProvider extends StatefulWidget {
  const MoreCableProvider({Key? key}) : super(key: key);

  @override
  _MoreCableProviderState createState() => _MoreCableProviderState();
}

class _MoreCableProviderState extends State<MoreCableProvider> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text(
          cableTvText,
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
          children: [
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            CableTvItems(
              name: "STARTIMES",
              color: startimeColor,
              image: "assets/images/startime.png",
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            CableTvItems(
              name: "DSTV",
              color: blueColor,
              image: "assets/images/dstv.jpg",
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            CableTvItems(
              name: "GOTV",
              color: airtelColor,
              image: "assets/images/gotv.jpg",
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            CableTvItems(
              name: "SHOWMAX",
              color: blueColor,
              image: "assets/images/showmax.png",
            ),
          ],
        ),
      ),
    );
  }
}
