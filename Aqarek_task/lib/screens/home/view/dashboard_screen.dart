import 'package:aqarek_task/constants/app_colors.dart';
import 'package:aqarek_task/screens/home/provider/dashboard_provider.dart';
import 'package:aqarek_task/screens/home/view/home_screen.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CurvedSNavigationBarScreen extends StatefulWidget {
  const CurvedSNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<CurvedSNavigationBarScreen> createState() =>
      _CurvedSNavigationBarScreenState();
}

class _CurvedSNavigationBarScreenState
    extends State<CurvedSNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavigationBarProvider>(
            create: (context) => BottomNavigationBarProvider()),
      ],
      child: CurvedNavigationDash(),
    );
  }
}

class CurvedNavigationDash extends StatefulWidget {
  const CurvedNavigationDash({super.key});

  @override
  _CurvedNavigationDashState createState() => _CurvedNavigationDashState();
}

class _CurvedNavigationDashState extends State<CurvedNavigationDash> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  List<Widget> screens = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Consumer<BottomNavigationBarProvider>(
        builder: (context, provider, child) {
          return CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            items: [
              CurvedNavigationBarItem(
                  child: Icon(Icons.home_outlined,
                      color: provider.selectedIndex == 0
                          ? AppColors.mainColor
                          : Colors.grey.shade100),
                  label: 'الرئيسية',
                  labelStyle: TextStyle(
                    fontSize: 13.h,
                      color: provider.selectedIndex == 0
                          ? Colors.white
                          : Colors.grey.shade300)),
              CurvedNavigationBarItem(
                  child: Icon(Icons.content_paste_search,
                      color: provider.selectedIndex == 1
                          ? AppColors.mainColor
                          : Colors.grey.shade100),
                  label: 'بحث',
                  labelStyle: TextStyle(
                      fontSize: 13.h,
                      color: provider.selectedIndex == 1
                          ? Colors.white
                          : Colors.grey.shade300)),
              CurvedNavigationBarItem(
                  child: Icon(Icons.map_outlined,
                      color: provider.selectedIndex == 2
                          ? AppColors.mainColor
                          : Colors.grey.shade100),
                  label: 'خريطة عقارك',
                  labelStyle: TextStyle(
                      fontSize: 13.h,
                      color: provider.selectedIndex == 2
                          ? Colors.white
                          : Colors.grey.shade300)),
              CurvedNavigationBarItem(
                  child: Image.asset(
                      'assets/images/3496156-removebg-preview.png',
                      height: 30.h,
                      width: 20.w,
                      color: provider.selectedIndex == 3
                          ? AppColors.mainColor
                          : Colors.grey.shade100),
                  label: 'طلباتي',
                  labelStyle: TextStyle(
                      fontSize: 13.h,
                      color: provider.selectedIndex == 3
                          ? Colors.white
                          : Colors.grey.shade300)),
              CurvedNavigationBarItem(
                  child: Image.asset(
                      'assets/images/other-24-removebg-preview.png',
                      height: 30.h,
                      width: 30.w,
                      color: provider.selectedIndex == 4
                          ? AppColors.mainColor
                          : Colors.grey.shade100),
                  label: 'أخرى',
                  labelStyle: TextStyle(
                      fontSize: 13.h,
                      color: provider.selectedIndex == 4
                          ? Colors.white
                          : Colors.grey.shade300)),
            ],
            color: AppColors.mainColor,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 300),
            onTap: (index) {
              provider.setIndex(index);
            },
            letIndexChange: (index) => true,
          );
        },
      ),
      body: Consumer<BottomNavigationBarProvider>(
        builder: (context, provider, child) {
          return screens[provider.selectedIndex];
        },
      ),
    );
  }
}
