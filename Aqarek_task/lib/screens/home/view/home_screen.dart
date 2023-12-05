import 'dart:async';

import 'package:aqarek_task/constants/app_colors.dart';
import 'package:aqarek_task/screens/home/components/header_offers.dart';
import 'package:aqarek_task/screens/home/components/header_gallery.dart';
import 'package:aqarek_task/screens/home/components/header_widgets.dart';
import 'package:aqarek_task/screens/home/components/partners_screen.dart';
import 'package:aqarek_task/screens/home/components/latest_projects.dart';
import 'package:aqarek_task/screens/home/components/units_widget.dart';
import 'package:aqarek_task/screens/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
          create: (context) => HomeProvider(),
        ),
      ],
      child: HomePage(),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Headers gallery
            Consumer<HomeProvider>(builder: (context, provider, child) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                // height: 350.h,
                child: provider.loading
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: CircularProgressIndicator(
                                color: AppColors.mainColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    : CarouselWithIndicatorDemo(
                        imgList: provider.headerGallery,
                      ),
              );
            }),
            SizedBox(
              height: 30.h,
            ),

            /// Headers widgets
            Consumer<HomeProvider>(builder: (context, provider, child) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                // height: 350.h,
                child: provider.loading
                    ? Container()
                    : HeadersWidgetsComponent(
                        headerWidgets: provider.headerWidgets,
                      ),
              );
            }),
            SizedBox(
              height: 30.h,
            ),

            /// Headers offers
            Consumer<HomeProvider>(builder: (context, provider, child) {
              List<Widget> listWidgets = [];
              listWidgets = List<Widget>.generate(
                  provider.headerOffers.length,
                  (index) => SpecialOfferWidget(
                        height: 180.h,
                        width: 380.w,
                        offersModel: provider.headerOffers[index],
                      ));

              return SizedBox(
                width: MediaQuery.of(context).size.width,
                // height: 350.h,
                child: provider.loading
                    ? Container()
                    : CarouselSpecialOffer(
                        listWidgets: listWidgets,
                      ),
              );
            }),

            SizedBox(
              height: 30.h,
            ),

            /// Latest Projects
            Consumer<HomeProvider>(builder: (context, provider, child) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                // height: 350.h,
                child: provider.loading
                    ? Container()
                    : LatestProjectsComponent(
                        latestProjects: provider.latestProjects,
                        latestProjectsSectionTilte: provider.homeComponentsModel
                                .latestprojectssectiontilte ??
                            '',
                      ),
              );
            }),
            SizedBox(
              height: 30.h,
            ),

            /// Units Widget
            Consumer<HomeProvider>(builder: (context, provider, child) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: provider.loading
                    ? Container()
                    : UnitsWidget(
                        unitsSectionTilte:
                            provider.homeComponentsModel.unitssectiontilte!,
                        units: provider.units,
                      ),
              );
            }),
            SizedBox(
              height: 30.h,
            ),

            /// partners Widget
            Consumer<HomeProvider>(builder: (context, provider, child) {
              return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: provider.loading
                      ? Container()
                      : PartnersComponent(
                          title: 'تسوق من خلال مطوري العقارات',
                          partners: provider.partners,
                        ));
            }),

            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
