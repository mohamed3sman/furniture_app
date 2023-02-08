import 'package:flutter/material.dart';
import 'package:furniture_app/components/horizontal_products.dart';
import 'package:furniture_app/components/vertical_product.dart';
import 'package:furniture_app/models/data.dart';
import 'package:furniture_app/screens/cart_page.dart';
import 'package:furniture_app/screens/product_details.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 225, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 218, 225, 240),
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 7.h),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: Colors.black),
              height: 3.h,
              child: const Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.sp)),
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 15.w),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          const Text(
                            'Search',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Center(
                          child: IconButton(
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
                        ),
                      )))
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Explore',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 330.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProductDetails(
                              image: products[0].image,
                              title: products[0].title,
                              price: products[0].price);
                        }));
                      },
                      child: HorizontalProduct(
                          image: products[0].image,
                          name: products[0].title,
                          price: products[0].price),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProductDetails(
                              image: products[1].image,
                              title: products[1].title,
                              price: products[1].price);
                        }));
                      },
                      child: HorizontalProduct(
                          image: products[1].image,
                          name: products[1].title,
                          price: products[1].price),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProductDetails(
                              image: products[2].image,
                              title: products[2].title,
                              price: products[2].price);
                        }));
                      },
                      child: HorizontalProduct(
                          image: products[2].image,
                          name: products[2].title,
                          price: products[2].price),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProductDetails(
                              image: products[3].image,
                              title: products[3].title,
                              price: products[3].price);
                        }));
                      },
                      child: HorizontalProduct(
                          image: products[3].image,
                          name: products[3].title,
                          price: products[3].price),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: Text(
                      'Best Selling',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProductDetails(
                                image: products[4].image,
                                title: products[4].title,
                                price: products[4].price);
                          }));
                        },
                        child: VerticalProduct(
                            image: products[4].image,
                            title: products[4].title,
                            price: products[4].price),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProductDetails(
                                image: products[5].image,
                                title: products[5].title,
                                price: products[5].price);
                          }));
                        },
                        child: VerticalProduct(
                            image: products[5].image,
                            title: products[5].title,
                            price: products[5].price),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProductDetails(
                                image: products[6].image,
                                title: products[6].title,
                                price: products[6].price);
                          }));
                        },
                        child: VerticalProduct(
                            image: products[6].image,
                            title: products[6].title,
                            price: products[6].price),
                      ),
                    ],
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
