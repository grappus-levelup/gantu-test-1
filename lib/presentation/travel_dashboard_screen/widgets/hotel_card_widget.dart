import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/hotel_card_model.dart';

class HotelCardWidget extends StatelessWidget {
  final HotelCardModel hotel;

  HotelCardWidget({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.h,
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        borderRadius: BorderRadius.circular(20.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotel.title ?? '',
                      style: TextStyleHelper.instance.title18Medium,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      hotel.location ?? '',
                      style: TextStyleHelper.instance.body14Light,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: appTheme.colorFFF5F5,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStarsstreamlinesolar1,
                      height: 18.h,
                      width: 18.h,
                    ),
                    SizedBox(width: 4.h),
                    Text(
                      hotel.rating ?? '',
                      style: TextStyleHelper.instance.body12SemiBold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              if (hotel.hasLimitedDeal ?? false)
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFFF5F5,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgSalestreamlinesolar11DeepPurple400,
                        height: 18.h,
                        width: 18.h,
                      ),
                      SizedBox(width: 4.h),
                      Text(
                        'limited time Deal',
                        style: TextStyleHelper.instance.body12Medium.copyWith(
                          color: appTheme.colorFF9333,
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(width: 8.h),
              if (hotel.roomsLeft != null)
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFFFEF2,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                  child: Text(
                    hotel.roomsLeft!,
                    style: TextStyleHelper.instance.body12Medium.copyWith(
                      color: appTheme.colorFFDC26,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 16.h),
          CustomImageView(
            imagePath: hotel.image ?? '',
            height: 252.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(20.h),
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    hotel.originalPrice ?? '',
                    style: TextStyleHelper.instance.body14.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  SizedBox(width: 8.h),
                  Container(
                    decoration: BoxDecoration(
                      color: appTheme.colorFF16A3,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 2.h,
                    ),
                    child: Text(
                      hotel.discountPercentage ?? '',
                      style: TextStyleHelper.instance.body12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    hotel.finalPrice ?? '',
                    style: TextStyleHelper.instance.title20SemiBold,
                  ),
                  SizedBox(width: 8.h),
                  Text('/ person', style: TextStyleHelper.instance.body14),
                ],
              ),
              if (hotel.hasSelectRoom ?? false)
                Row(
                  children: [
                    Text(
                      'Select Room',
                      style: TextStyleHelper.instance.body14SemiBold,
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorBlack90010x5,
                      height: 5.h,
                      width: 10.h,
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
