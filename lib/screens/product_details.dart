import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/screens/cart_page.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({this.image, this.title, this.price});

  String? image;
  String? title;
  double? price;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50.sp)),
                    child: Image.asset(
                      image!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_rounded,
                                color: Colors.pinkAccent)),
                        Text(
                          title!,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.pinkAccent),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CartPage()),
                            );
                          },
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            size: 30.sp,
                            color: Colors.pinkAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$$price',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xfff17d87)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title!,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 25.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 25.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 25.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 25.sp,
                          ),
                          Icon(
                            Icons.star_half_outlined,
                            color: Colors.amber,
                            size: 25.sp,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text('Color Option'),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8.0.w),
                        child: CircleAvatar(
                          backgroundColor: Color(0xfff17067),
                          radius: 10.r,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0.w),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 10.r,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0.w),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 10.r,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(40.r)),
                  child: MaterialButton(
                    padding: EdgeInsets.symmetric(
                        vertical: 20.h,
                        horizontal: MediaQuery.of(context).size.width / 9),
                    color: const Color(0xff24293e),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartPage()),
                      );
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
