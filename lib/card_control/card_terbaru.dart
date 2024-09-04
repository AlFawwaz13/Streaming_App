import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streaming_app/data_control/app_utilitydata.dart';

// A reusable widget for the poster item
class PosterItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onTap;

  const PosterItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        HapticFeedback.lightImpact();
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
          color: Theme.of(context).colorScheme.background,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 125.h,
              width: 120.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.sp),
                  topLeft: Radius.circular(8.sp),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.sp),
                  topLeft: Radius.circular(8.sp),
                ),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/LoadingAnimation.gif",
                  placeholderFit: BoxFit.none,
                  fit: BoxFit.fill,
                  image: imageUrl,
                  fadeInDuration: const Duration(milliseconds: 500),
                  fadeOutDuration: const Duration(milliseconds: 500),
                  imageErrorBuilder: (c, o, s) => Image.asset(
                    "assets/FailAnimation.gif",
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              title,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 8.sp,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTerbaru extends StatelessWidget {
  const SectionTerbaru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      fallbackHeight: 200.h,
      fallbackWidth: 100.w,
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _buildHeader(context),
          SizedBox(height: 3.h),
          Expanded(
            child: GridView.count(
              childAspectRatio: 16 / 10,
              primary: false,
              padding: const EdgeInsets.all(8),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 1,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                PosterItem(
                  imageUrl: CardImages.MahoutsukaiS1,
                  title: "Mahoutsukai No Yome Season 1",
                  onTap: () => print("Mahoutsukai No Yome Season 1 ditekan"),
                ),
                PosterItem(
                  imageUrl: CardImages.SpyXFamilyS1,
                  title: "Spy X Family Season 1",
                  onTap: () => print("Spy X Family Season 1 ditekan"),
                ),
                PosterItem(
                  imageUrl: CardImages.Chainsawman,
                  title: "Chainsawman",
                  onTap: () => print("Chainsawman ditekan"),
                ),
                PosterItem(
                  imageUrl: CardImages.MashleS1,
                  title: "Mashle Season 1",
                  onTap: () => print("Mashle Season 1 ditekan"),
                ),
                PosterItem(
                  imageUrl: CardImages.SoloLevelingS1,
                  title: "Solo Leveling Season 1",
                  onTap: () => print("Solo Leveling Season 1 ditekan"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildHeaderTitle(context),
        _buildHeaderActionButton(),
      ],
    );
  }

  Widget _buildHeaderTitle(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 30.h,
      width: 150.w,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 15.w),
          Text(
            "Terbaru",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderActionButton() {
    return Container(
      alignment: Alignment.topRight,
      height: 30.h,
      width: 90.w,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              print("Terbaru Ditekan");
            },
            icon: Icon(
              Icons.arrow_right_alt_sharp,
              color: Colors.white,
              size: 35.sp,
            ),
          ),
          SizedBox(width: 1.w),
        ],
      ),
    );
  }
}
