import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/destination_card_model.dart';

class DestinationCardWidget extends StatelessWidget {
  final DestinationCardModel destination;

  DestinationCardWidget({Key? key, required this.destination})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        image: DecorationImage(
          image: AssetImage(destination.backgroundImage ?? ''),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12.h,
            left: 12.h,
            child: Container(
              decoration: BoxDecoration(
                color: appTheme.blackCustom,
                borderRadius: BorderRadius.circular(8.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
              child: Text(
                destination.duration ?? '',
                style: TextStyleHelper.instance.body12Regular.copyWith(
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16.h,
            left: 12.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.title ?? '',
                  style: TextStyleHelper.instance.title22Medium,
                ),
                SizedBox(height: 4.h),
                Text(
                  destination.price ?? '',
                  style: TextStyleHelper.instance.body12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
