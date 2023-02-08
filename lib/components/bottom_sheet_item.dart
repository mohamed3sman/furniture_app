import 'package:flutter/material.dart';

class BottomSheetItem extends StatelessWidget {
  BottomSheetItem({
    required this.title,
    required this.price,
    required this.titleSize,
    required this.priceSize,
    super.key,
  });
  String title;
  double price;
  double titleSize;
  double priceSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: titleSize,
                fontWeight: FontWeight.w500),
          ),
          Text(
            '\$$price',
            style: TextStyle(
              color: Colors.pink,
              fontSize: priceSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
