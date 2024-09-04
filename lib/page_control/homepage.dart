import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streaming_app/card_control/card_rekomendasi.dart';
import 'package:streaming_app/card_control/card_terbaru.dart';
import 'package:streaming_app/data_control/app_utilitydata.dart';
import 'package:streaming_app/poster_control/poster_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            _buildTopBanner(context, screenWidth),
            SizedBox(height: 15.h),
            const PosterManager(),
            SizedBox(height: 15.h),
            _buildContentContainer(context, screenWidth),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBanner(BuildContext context, double screenWidth) {
    return Container(
      height: 100.h,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20.sp),
          bottomLeft: Radius.circular(20.sp),
        ),
      ),
    );
  }

  Widget _buildContentContainer(BuildContext context, double screenWidth) {
    return Container(
      width: screenWidth,
      height: 1000.h,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.sp),
          topRight: Radius.circular(20.sp),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          _buildTopDivider(),
          SizedBox(height: 50.h),
          const SectionTerbaru(),
          SizedBox(height: 10.h),
          const SectionRekomendasi(),
        ],
      ),
    );
  }

  Widget _buildTopDivider() {
    return Container(
      width: 50.w,
      height: 4.h,
      color: Colors.white,
    );
  }
}
