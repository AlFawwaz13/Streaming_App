import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streaming_app/data_control/app_utilitydata.dart';

class PosterManager extends StatefulWidget {
  const PosterManager({super.key});

  @override
  State<PosterManager> createState() => _PosterManagerState();
}

class _PosterManagerState extends State<PosterManager> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 130.h,
        autoPlay: true,
        enableInfiniteScroll: false,
        viewportFraction: 0.9,
      ),
      items: [
        _buildPoster(LinksOFPosters.Poster1, "Poster 1 ditekan"),
        _buildPoster(LinksOFPosters.Poster2, "Poster 2 ditekan"),
        _buildPoster(LinksOFPosters.Poster3, "Poster 3 ditekan"),
        _buildPoster(LinksOFPosters.Poster4, "Poster 4 ditekan"),
      ],
    );
  }

  Widget _buildPoster(String imageUrl, String pressMessage) {
    return InkWell(
      onTap: () {
        HapticFeedback.lightImpact();
        print(pressMessage);
      },
      child: Container(
        height: 130.h, // Adjusted height to match CarouselSlider
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.sp),
          child: FadeInImage.assetNetwork(
            placeholder: "assets/LoadingAnimation.gif",
            placeholderFit: BoxFit.none,
            fit: BoxFit.fill,
            image: imageUrl,
            fadeInDuration: const Duration(milliseconds: 500),
            fadeOutDuration: const Duration(milliseconds: 500),
            imageErrorBuilder: (context, error, stackTrace) => Image.asset(
              "assets/FailAnimation.gif",
              fit: BoxFit.none,
            ),
          ),
        ),
      ),
    );
  }
}
