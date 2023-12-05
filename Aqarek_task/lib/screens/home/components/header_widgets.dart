import 'package:aqarek_task/screens/home/models/home_components_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadersWidgetsComponent extends StatefulWidget {
  final List<HeaderWidget> headerWidgets;

  const HeadersWidgetsComponent({Key? key, required this.headerWidgets})
      : super(key: key);

  @override
  State<HeadersWidgetsComponent> createState() =>
      _HeadersWidgetsComponentState();
}

class _HeadersWidgetsComponentState extends State<HeadersWidgetsComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 20.w),
          itemCount: widget.headerWidgets.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Container(
                height: 150.h,
                width: 150.w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.network(widget.headerWidgets[index].imageurl!),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(widget.headerWidgets[index].title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.h),),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
