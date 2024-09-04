import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streaming_app/data_control/app_utilitydata.dart';
import 'package:streaming_app/page_control/homepage.dart';

class NavigationControl extends StatefulWidget {
  const NavigationControl({super.key});

  @override
  State<NavigationControl> createState() => _NavigationControlState();
}

class _NavigationControlState extends State<NavigationControl> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentIndex == 0 ? HomePage() : listOfNavigation[currentIndex],
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    HapticFeedback.lightImpact();
                    print("Search Pressed");
                  },
                  child: Container(
                    height: 28.h,
                    width: 230.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.sp)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 1.w,
                              width: 5.w,),
                            Icon(
                              Icons.search_outlined,
                              size: 27.sp,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              height: 1.w,
                              width: 5.w,),
                            Text(
                              "Cari disini",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black38
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        leadingWidth: 250.w,
        actions:[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){
                        print("Notif Pressed");
                      },
                      icon: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                        size: 30.sp,
                      ))
              ],
            )
          ],
        ),
      ]
      ),
      bottomNavigationBar: Container(
        height: 55.h,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent.withOpacity(0.2),
              blurRadius: 30,
              offset: Offset(0, 10),
            )
          ],
        ),
        child: ListView.builder(
          itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => InkWell(
              onTap: (){
                setState(() {
                  print(currentIndex);
                  currentIndex = index;
                  HapticFeedback.lightImpact();
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedContainer(
                      duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                    ? 100.w
                    : 40.w,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? 30.h : 0,
                    width:  index == currentIndex ? 100.w : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? listOfColors[index].withOpacity(0.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  ),
                  AnimatedContainer(
                      duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                    ? 100.w
                    : 65.w,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex ? 37.w : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: TextStyle(
                                color: listOfColors[index],
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex ? 8.w : 15.w,
                          ),
                          Icon(
                            index == currentIndex
                                ? listOfIconsSelected[index]
                                : listOfIconsUnselected[index],
                            size: index == currentIndex ? 28.sp : 22.sp,
                            color: index == currentIndex
                            ? listOfColors[index]
                            : Theme.of(context).colorScheme.primary,
                          )
                        ],
                      )
                    ],
                  ),),

                ],
              ),

            ),
        ),
      ),
    );
    return const Placeholder();
  }

}
