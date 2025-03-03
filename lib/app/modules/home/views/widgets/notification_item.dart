import 'package:broker/app/modules/layout/data/model/user_notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatelessWidget {
  final Notifications? notifications;
  const NotificationItem({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(30), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 8, // Blur radius
              offset: Offset(0, 4), // Offset for the shadow
            ),
          ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            notifications?.description??"",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          8.verticalSpace,
           Text(
            notifications?.date??"",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}