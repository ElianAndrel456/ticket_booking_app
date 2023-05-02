import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  const TicketTabs(
      {super.key, required this.firstTab, required this.secondTab});
  final String firstTab;
  final String secondTab;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
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
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeigth(7.0)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeigth(50.0))),
                color: Colors.white,
              ),
              child: Center(child: Text(firstTab)),
            ),
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeigth(7.0)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeigth(50.0))),
                color: Color(0xFFF4F6FD),
              ),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
