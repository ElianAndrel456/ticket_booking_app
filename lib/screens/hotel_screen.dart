import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 17.0,
      ),
      margin: EdgeInsets.only(right: 17.0, top: 5.0),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20.0,
              spreadRadius: 5.0,
            )
          ]),
      width: size.width * 0.6,
      height: AppLayout.getHeigth(350.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeigth(180.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Styles.primaryColor,
                image: DecorationImage(
                    image: AssetImage("assets/images/${hotel["image"]}"),
                    fit: BoxFit.cover)),
          ),
          Gap(10.0),
          Text(
            "${hotel["place"]}",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(5),
          Text(
            "${hotel["destination"]}",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(8),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headLineStyle.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
