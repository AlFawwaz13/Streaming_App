import 'package:flutter/material.dart';
import 'package:streaming_app/page_control/account_page.dart';
import 'package:streaming_app/page_control/favourite_page.dart';
import 'package:streaming_app/page_control/history_page.dart';
import 'package:streaming_app/page_control/homepage.dart';
import 'package:streaming_app/page_control/list_page.dart';


List <IconData> listOfIconsSelected = [
  Icons.home_rounded,
  Icons.favorite_rounded,
  Icons.list_alt_rounded,
  Icons.history_rounded,
  Icons.person_rounded,
];
List <IconData> listOfIconsUnselected = [
  Icons.home_outlined,
  Icons.favorite_outline_rounded,
  Icons.list_alt_outlined,
  Icons.history_outlined,
  Icons.person_outline_rounded,
];
List <String> listOfStrings = [
  'Beranda',
  'Favorit',
  'Librari',
  'Histori',
  'Profil',
];
List <Color> listOfColors = [
  Colors.blueAccent,
  Colors.pinkAccent,
  Colors.deepOrangeAccent,
  Colors.blueAccent,
  Colors.blueAccent,
];
List <Widget> listOfNavigation = [
  const HomePage(),
  const FavouritePage(),
  const LibrariesPage(),
  const HistoryPage(),
  const AccountPage(),
];
List <Widget> failedPageNavigation = [
  const HomePage()
];

class AppUtility{
  AppUtility._();
  static const Color AppBaseColorDark   = Color(0xFF0C1117);
  static const Color AppSeccColorDark   = Color(0xFF151922);
  static const Color AppBaseColorLight  = Color(0xFFFFF7EC);
  static const Color AppSeccColorLight  = Color(0xFF2EA1DA);
}

class AppImages {
  AppImages._();
  static const String AccountBackground   = "https://drive.google.com/uc?export=view&id=1UElGShqpaFKc3v8ai8zjiu29yt4GBVkm";
}

class LinksOFPosters{
  LinksOFPosters._();

  static const String Poster1 = "https://drive.google.com/uc?export=view&id=1xMs6PcQ-jjleMXmcBFJQyFg8ZYlhYrPu";
  static const String Poster2 = "https://drive.google.com/uc?export=view&id=15BGNrZH1MD8Mr7SCA6C_jxh2sIUAsoMd";
  static const String Poster3 = "https://drive.google.com/uc?export=view&id=1_fFoGwrMJSOkQRyNcJyVtFz9E63Iphu-";
  static const String Poster4 = "https://drive.google.com/uc?export=view&id=1givQ2gq0THBhVu0wwvA1f37iTT6mTxzJ";
}

class CardImages{
  CardImages._();
  static const String MahoutsukaiS1 = "https://drive.google.com/uc?export=view&id=1_uVQV083vYODOBypy4FU-fNVmGdCCsuP";
  static const String MashleS1      = "https://drive.google.com/uc?export=view&id=1K-aj4p3qVViQ01Gl-iSCtMRRgHXaR9qV";
  static const String SoloLevelingS1= "https://drive.google.com/uc?export=view&id=1vz0n9SIVRChWujSQmZyX9IR2K026WkMa";
  static const String SpyXFamilyS1  = "https://drive.google.com/uc?export=view&id=1EI4dOY4N2eFLnFJixee1v2_N3GTmos2-";
  static const String Chainsawman   = "https://drive.google.com/uc?export=view&id=1_S58LHQR-jTELdVdXO-WRmDAZnBvAow0";
}
