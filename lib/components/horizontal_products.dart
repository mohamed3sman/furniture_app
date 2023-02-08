import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalProduct extends StatelessWidget {
  HorizontalProduct(
      {required this.image, required this.name, required this.price});

  String image;
  String name;
  double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 18.0.w, top: 18.0.h, bottom: 4.0.h, left: 8.0.w),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        width: 220.w,
        child: Padding(
          padding: EdgeInsets.all(10.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 185.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.r),
                    child: Image.asset(
                      image,
                      height: 190.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              Text(
                'Description',
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${price}',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
