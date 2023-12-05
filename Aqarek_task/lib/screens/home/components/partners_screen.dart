import 'package:aqarek_task/constants/app_colors.dart';
import 'package:aqarek_task/screens/home/models/home_components_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartnersComponent extends StatefulWidget {
  final String title;
  final List<Partner> partners;

  const PartnersComponent(
      {Key? key, required this.title, required this.partners})
      : super(key: key);

  @override
  State<PartnersComponent> createState() => _PartnersComponentState();
}

class _PartnersComponentState extends State<PartnersComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            Text(
              widget.title,
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 25.h,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 100.h,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 20.w),
              itemCount: widget.partners.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 30.w),
                  child: Container(
                    // height: 150.h,
                    // width: 120.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            widget.partners[index].image != null
                                ? Image.network(
                              widget.partners[index].image ?? '',
                              width: 50.w,
                              height: 50.h,
                              fit: BoxFit.cover,
                            )
                                : Container(
                              height: 130.h,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              widget.partners[index].title ?? '',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13.h),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
