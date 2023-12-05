import 'package:aqarek_task/constants/app_colors.dart';
import 'package:aqarek_task/screens/home/models/home_components_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSpecialOffer extends StatefulWidget {
  CarouselSpecialOffer({super.key, this.listWidgets});

  final List<Widget>? listWidgets;

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselSpecialOffer> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: widget.listWidgets,
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 10),
            viewportFraction: 1.2,
            aspectRatio: 2.8,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: widget.listWidgets!.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: _current == entry.key
                ? Container(
                    width: 32.w,
                    height: 8.h,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(4.r)),
                  )
                : Container(
                    width: 8.h,
                    height: 8.w,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
          );
        }).toList(),
      ),
    ]);
  }
}

class SpecialOfferWidget extends StatelessWidget {
  final double height;
  final double width;
  final Header offersModel;

  const SpecialOfferWidget(
      {Key? key,
      required this.height,
      required this.width,
      required this.offersModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(offersModel.title);
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: (offersModel.image ?? '').isEmpty
              ? Container(
                  color: Colors.black26,
                  height: height,
                  width: width,
                )
              : CachedNetworkImage(
                  imageUrl: offersModel.image ?? '',
                  height: height,
                  width: width,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
        ),
        Positioned(
            bottom: 20.h,
            right: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offersModel.title,
                  style: TextStyle(color: Colors.white, fontSize: 30.h),
                )
              ],
            )),
      ],
    );
  }
}
