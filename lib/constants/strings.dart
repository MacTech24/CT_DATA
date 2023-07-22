import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String splashText = "Best Way to Access the World";

const String dashboardText = "Dashboard";
const String transactionText = "Transaction";
const String beneficiaryText = "Beneficiaries";
const String profileText = "Profile";

// Darshboard appbar texts
const String appBarText = "Hello Musa";
const String greetings = "Thank you for choosing CT DATA";
const String cableTvText = "Cable TV Provider";

//Airtime and data purchage strings
const String mtnText = "2.5% Discount\n";
const String airtelText = "2.5% Discount\n";
const String gloText = "2.5% Discount\n";
const String etisalatText = "2.5% Discount\n";
const String internationAirtimeText = "International\nairtime";
const String internationDataText = "International\ndata";

//Cable Tv Subscription strings
const String gotvText = "GOTV\n";
const String dstvText = "DSTV\n";
const String startimesText = "STARTIMES\n";
const String showmaxText = "SHOWMAX\n";
const String moreCabeProviderText = "More Cable Tv\nProvider";

//Old Usrs strings
const String availBal = "Available Balance";
const String balance = "N5,000";
const String fundWallet = "Fund Wallet";
const String ctData = "CT DATA API";
const String more = "More";

TextStyle style1(Color color, double fontSize, FontWeight fw) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fw,
  );
}

TextStyle style2(
  Color color,
  double fontSize,
  FontWeight fw,
) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fw,
    decoration: TextDecoration.underline,
  );
}

TextStyle style3(
  Color color,
  double fontSize,
  FontWeight fw,
) {
  return GoogleFonts.raleway(
    color: color,
    fontSize: fontSize,
    fontWeight: fw,
  );
}
