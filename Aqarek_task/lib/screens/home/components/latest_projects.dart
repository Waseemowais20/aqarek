import 'package:aqarek_task/constants/app_colors.dart';
import 'package:aqarek_task/screens/home/models/home_components_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LatestProjectsComponent extends StatefulWidget {
  final LatestProjects latestProjects;
  final String latestProjectsSectionTilte;

  const LatestProjectsComponent(
      {Key? key,
      required this.latestProjects,
      required this.latestProjectsSectionTilte})
      : super(key: key);

  @override
  State<LatestProjectsComponent> createState() =>
      _LatestProjectsComponentState();
}

class _LatestProjectsComponentState extends State<LatestProjectsComponent> {
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
              widget.latestProjectsSectionTilte,
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
          height: 260.h,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 20.w),
              itemCount: widget.latestProjects.items!.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Container(
                    // height: 150.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        widget.latestProjects.items![index].image != null
                            ? Expanded(
                                flex: 4,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.r),
                                    topLeft: Radius.circular(12.r),
                                  ),
                                  child: Image.network(
                                    widget.latestProjects.items![index].image ??
                                        '',
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )
                            : Expanded(flex: 4, child: Container()),
                        SizedBox(
                          height: 10.h,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                widget.latestProjects.items![index].cityname!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.h),
                              ),
                              Text(
                                widget.latestProjects.items![index].title!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11.h,
                                    color: Colors.grey.shade500),
                              ),
                            ],
                          ),
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
