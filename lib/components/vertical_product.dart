import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/models/data.dart';

class VerticalProduct extends StatelessWidget {
  VerticalProduct(
      {required this.image, required this.title, required this.price});
  String image;
  String title;
  double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
        child: ListTile(
          contentPadding: EdgeInsets.all(12.sp),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(5.r),
            child: SizedBox(
              width: 55.w,
              height: 70.h,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Text(
                  'Lorem ipsum',
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
              ),
            ],
          ),
          subtitle: Text(
            '\$$price',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Container(
                  width: 33.w,
                  height: 30.h,
                  color: Colors.black,
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
