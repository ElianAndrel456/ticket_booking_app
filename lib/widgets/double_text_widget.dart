import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  const DoubleTextWidget({
    super.key,
    required this.text1,
  });
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print("View All");
          },
          child: Text(
            "View All",
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
