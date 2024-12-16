import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> listOfSelected = List.generate(
    12,
    (index) => false,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF969FF9),
                    const Color.fromARGB(255, 131, 142, 253),
                    const Color.fromARGB(255, 245, 117, 179).withOpacity(0.8),
                    const Color(0xFFFFE9FF).withOpacity(0.5),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            height: 450.h,
            // alignment: Alignment.bottomRight,
            child: Image.asset(
              fit: BoxFit.cover,
              "assets/new_year_1.png",
            ),
          ),
          Positioned(
            top: 30.h,
            left: 10.w,
            right: 10.w,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                Icon(
                  Icons.shopify_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Positioned(
            left: 10.w,
            width: 250.w,
            top: 80.h,
            child: Text(
              maxLines: 2,
              overflow: null,
              "Find your \nbest present",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.sp,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 200.h,
            left: 10.w,
            right: 10.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50.h,
                  width: 280.w,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search_outlined,
                      ),
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  width: 50.w,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.filter_alt,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 280.h,
            left: 10.w,
            right: 10.w,
            child: Text(
              "Popular Tags",
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            top: 320.h,
            left: 10.w,
            right: 10.w,
            child: Wrap(
              spacing: 10.w,
              runSpacing: 15.h,
              children: [
                popularTags(
                  isSelected: listOfSelected[0],
                  onSelected: () {
                    setState(() {
                      listOfSelected[0] = !listOfSelected[0];
                    });
                  },
                  tagName: "Christmas",
                  color: const Color(0xFFFFE9FF),
                ),
                popularTags(
                  onSelected: () {
                    setState(() {
                      listOfSelected[1] = !listOfSelected[1];
                    });
                  },
                  isSelected: listOfSelected[1],
                  tagName: "Valentine's Day",
                  color: const Color(0xFFE4E7FF),
                ),
                popularTags(
                  onSelected: () {
                    setState(() {
                      listOfSelected[2] = !listOfSelected[2];
                    });
                  },
                  isSelected: listOfSelected[2],
                  tagName: "Birthday",
                  color: const Color(0xFFFFE9FF),
                ),
                popularTags(
                  onSelected: () {
                    setState(() {
                      listOfSelected[3] = !listOfSelected[3];
                    });
                  },
                  isSelected: listOfSelected[3],
                  tagName: "Thanksgiving",
                  color: const Color(0xFFE4E7FF),
                ),
                popularTags(
                  onSelected: () {
                    setState(() {
                      listOfSelected[4] = !listOfSelected[4];
                    });
                  },
                  isSelected: listOfSelected[4],
                  tagName: "Halloween",
                  color: const Color(0xFFFFE9FF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector popularTags({
    required String tagName,
    required Color color,
    required VoidCallback onSelected,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        height: 30.h,
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey : color,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(
          tagName,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
