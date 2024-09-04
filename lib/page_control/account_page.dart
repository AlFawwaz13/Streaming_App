import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:provider/provider.dart';
import 'package:streaming_app/data_control/app_utilitydata.dart';
import 'package:streaming_app/theme_control/theme_provider.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 180.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.sp), bottomLeft: Radius.circular(20.sp))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.sp), bottomLeft: Radius.circular(20.sp)),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/LoadingAnimation.gif",
                  placeholderFit: BoxFit.none,
                  fit: BoxFit.fill,
                  image: AppImages.AccountBackground,
                  fadeInDuration: const Duration(milliseconds: 500),
                  fadeOutDuration: const Duration(milliseconds: 500),
                  imageErrorBuilder: (c, o, s) => Image.asset(
                    "assets/FailAnimation.gif",
                    fit: BoxFit.none,
                  ),),
              )
          ),
          SizedBox(height: 10.h),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.h,
            color: Theme.of(context).colorScheme.background,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.h,
                  width: 150.w,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SizedBox(width: 20.w),
                      Text(
                      "Tema",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18.sp,
                      ),
                    ),
                  ]),
                ),
                Container(
                  width: 150.w,
                  height: 30.h,
                  color: Colors.transparent,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LiteRollingSwitch(onTap: (){}, onDoubleTap: (){}, onSwipe: (){}, onChanged: (state){
                        Provider.of<ThemeProvider>(context, listen: false).toogleTheme();
                    },
                      value: themeProvider.isDarkMode,
                      textOff: " ",
                      textOn: " ",
                      colorOn: Colors.deepPurpleAccent,
                      colorOff: Colors.grey,
                      iconOn: Icons.mode_night_sharp,
                      iconOff: Icons.sunny,
                        width: 70.w,
                    ),
                      SizedBox(width: 20.w)
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
