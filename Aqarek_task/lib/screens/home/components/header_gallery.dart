import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  CarouselWithIndicatorDemo({super.key, this.imgList});

  final List<dynamic>? imgList;

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    print(widget.imgList!.length);
    List<Widget> imageSliders = widget.imgList!
        .map((item) => CachedNetworkImage(
              imageUrl: item ?? '',
              fadeInDuration: const Duration(milliseconds: 150),
              fadeOutDuration: const Duration(milliseconds: 150),
              // placeholder: (context, url) =>const Center(child:  Text('Loading Image....')),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.fill,
              width: 1000.w,
            ))
        .toList();

    return Stack(alignment: AlignmentDirectional.center, children: [
      CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: widget.imgList!.length > 1 ? true : false,
            // enlargeCenterPage: true,
            viewportFraction: 1,
            aspectRatio: 1.3,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Positioned(
        bottom: 0.h,
        left: 20.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: widget.imgList!.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: _current == entry.key
                  ? Container(
                      width: 15.w,
                      height: 5.h,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.r)),
                    )
                  : Container(
                      width: 5.h,
                      height: 5.w,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
