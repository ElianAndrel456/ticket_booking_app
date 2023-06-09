import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeigth(20.0),
              vertical: AppLayout.getWidth(20.0),
            ),
            children: [
              Gap(AppLayout.getWidth(40.0)),
              Text(
                "Tickets",
                style: Styles.headLineStyle,
              ),
              Gap(AppLayout.getWidth(20.0)),
              TicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getWidth(20.0)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeigth(15.0)),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
