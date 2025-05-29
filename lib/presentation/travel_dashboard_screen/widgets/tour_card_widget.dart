import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/tour_card_model.dart';

class TourCardWidget extends StatelessWidget {
  final TourCardModel tour;

  TourCardWidget({Key? key, required this.tour}) : super(key: key);

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
          CustomImageView(
            imagePath: tour.image ?? '',
            height: 242.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(20.h),
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.h),
          Text(tour.title ?? '', style: TextStyleHelper.instance.title18Medium),
          SizedBox(height: 4.h),
          Text(
            tour.subtitle ?? '',
            style: TextStyleHelper.instance.body14Light,
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: appTheme.colorFFF5F5,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
                child: Text(
                  tour.dates ?? '',
                  style: TextStyleHelper.instance.body12Medium.copyWith(
                    color: appTheme.blackCustom,
                  ),
                ),
              ),
              SizedBox(width: 8.h),
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
                      tour.rating ?? '',
                      style: TextStyleHelper.instance.body12SemiBold,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.h),
              if (tour.isGroupTour ?? false)
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFFF0FD,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant
                            .imgUsersgrouptworoundedstreamlinesolar1,
                        height: 16.h,
                        width: 16.h,
                      ),
                      SizedBox(width: 4.h),
                      Text(
                        'Group Tour',
                        style: TextStyleHelper.instance.body12Medium.copyWith(
                          color: appTheme.blackCustom,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    tour.originalPrice ?? '',
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
                      tour.discountPercentage ?? '',
                      style: TextStyleHelper.instance.body12,
                    ),
                  ),
                ],
              ),
              if (tour.spotsLeft != null)
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFFFEF2,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                  child: Text(
                    tour.spotsLeft!,
                    style: TextStyleHelper.instance.body12Medium.copyWith(
                      color: appTheme.colorFFDC26,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                tour.finalPrice ?? '',
                style: TextStyleHelper.instance.title20SemiBold,
              ),
              SizedBox(width: 8.h),
              Text('/ person', style: TextStyleHelper.instance.body14),
            ],
          ),
        ],
      ),
    );
  }
}
