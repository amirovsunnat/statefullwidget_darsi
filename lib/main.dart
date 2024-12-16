import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:statefullwidget_darsi/home_screen.dart';

void main(List<String> args) {
  runApp(const StatefullWidgetDarsi());
}

class StatefullWidgetDarsi extends StatelessWidget {
  const StatefullWidgetDarsi({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size.width > 600
          ? const Size(1280, 800)
          : const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
