import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20.0),
          vertical: AppLayout.getHeigth(20.0),
        ),
        children: [
          Gap(AppLayout.getHeigth(40.0)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle.copyWith(
              fontSize: AppLayout.getWidth(35.0),
            ),
          ),
          Gap(AppLayout.getHeigth(20.0)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeigth(50.0)),
                color: Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeigth(7.0)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeigth(50.0))),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("Airline tickets")),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeigth(7.0)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeigth(50.0))),
                      color: Color(0xFFF4F6FD),
                    ),
                    child: Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeigth(25.0)),
          AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(20.0),
          AppIconText(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          Gap(25.0),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(18.0),
              horizontal: AppLayout.getHeigth(15.0),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10.0)),
              color: Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                "Find Tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(40.0),
          DoubleTextWidget(text1: "Upcoming flights"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeigth(425.0),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeigth(15.0),
                  vertical: AppLayout.getWidth(15.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(AppLayout.getHeigth(12.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeigth(190.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeigth(12.0)),
                        image: DecorationImage(
                          image: AssetImage("assets/images/one.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeigth(12.0)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeigth(200.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF3ABBBB),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeigth(18.0)),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeigth(15.0),
                          vertical: AppLayout.getWidth(15.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfour survey",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(10.0),
                            Text(
                              "Take the survery about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45.0,
                        top: -40.0,
                        child: Container(
                          padding: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18.0,
                              color: Color(0xFF189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeigth(15.0)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeigth(210.0),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeigth(15.0),
                      vertical: AppLayout.getWidth(15.0),
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeigth(18.0)),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeigth(15.0)),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "😊",
                                style: TextStyle(fontSize: 30.0),
                              ),
                              TextSpan(
                                text: "😍",
                                style: TextStyle(fontSize: 40.0),
                              ),
                              TextSpan(
                                text: "😘",
                                style: TextStyle(fontSize: 30.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
