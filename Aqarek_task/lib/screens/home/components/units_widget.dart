import 'package:aqarek_task/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:aqarek_task/screens/home/models/home_components_model.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnitsWidget extends StatefulWidget {
  final String unitsSectionTilte;
  final Units units;

  const UnitsWidget({
    Key? key,
    required this.unitsSectionTilte, required this.units,
  }) : super(key: key);

  @override
  State<UnitsWidget> createState() => _UnitsWidgetState();
}

class _UnitsWidgetState extends State<UnitsWidget> {
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
              widget.unitsSectionTilte,
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
          height: 250.h,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 20.w),
              itemCount: widget.units.items!.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Container(
                    // height: 150.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        widget.units.items![index].photourl != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12.r),
                                  topLeft: Radius.circular(12.r),
                                ),
                                child: Image.network(
                                  widget.units.items![index].photourl!,
                                  width: double.infinity,
                                  height: 180.h,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Container(
                                height: 130.h,
                              ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  widget.units.items![index].title!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 13.h),
                                ),
                                Text(
                                  widget.units.items![index].text!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11.h,
                                      color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                            Text(
                              widget.units.items![index].totalprice!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13.h,color: Colors.blue),
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
