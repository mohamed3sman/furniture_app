import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:furniture_app/components/bottom_sheet_item.dart';
import 'package:furniture_app/components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 225, 240),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 30.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          CartItem(index: 0, isSelected: true),
          CartItem(index: 1, isSelected: false),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 280.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r))),
            child: Padding(
              padding: EdgeInsets.all(30.0.sp),
              child: Column(
                children: [
                  BottomSheetItem(
                    title: 'Selected Items',
                    titleSize: 18,
                    price: 235.00,
                    priceSize: 18,
                  ),
                  BottomSheetItem(
                    title: 'Shipping Fee',
                    titleSize: 18,
                    price: 30.00,
                    priceSize: 18,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                    height: 30.h,
                  ),
                  BottomSheetItem(
                    title: 'Subtotal',
                    titleSize: 22,
                    price: 265.00,
                    priceSize: 22,
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r)),
                      onPressed: () {},
                      textColor: Colors.white,
                      color: const Color(0xff24293e),
                      padding: EdgeInsets.symmetric(vertical: 25.h),
                      child: Text(
                        'Checkout',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
