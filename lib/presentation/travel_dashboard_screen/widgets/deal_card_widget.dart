import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/deal_card_model.dart';

class DealCardWidget extends StatelessWidget {
  final DealCardModel deal;

  DealCardWidget({Key? key, required this.deal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        borderRadius: BorderRadius.circular(16.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: deal.ratingImage ?? '',
                height: 24.h,
                width: 110.h,
              ),
              Spacer(),
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
                      height: 14.h,
                      width: 14.h,
                    ),
                    SizedBox(width: 4.h),
                    Text(
                      deal.rating ?? '',
                      style: TextStyleHelper.instance.label9SemiBold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deal.title ?? '',
                  style: TextStyleHelper.instance.title18Medium,
                ),
                SizedBox(height: 4.h),
                Text(
                  deal.subtitle ?? '',
                  style: TextStyleHelper.instance.label11Light,
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          CustomImageView(
            imagePath: deal.image ?? '',
            height: 195.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(16.h),
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    deal.originalPrice ?? '',
                    style: TextStyleHelper.instance.label11.copyWith(
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
                      deal.discountPercentage ?? '',
                      style: TextStyleHelper.instance.label9,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: appTheme.colorFFF5F5,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSalestreamlinesolar11,
                      height: 14.h,
                      width: 14.h,
                    ),
                    SizedBox(width: 4.h),
                    Text(
                      deal.offersCount ?? '',
                      style: TextStyleHelper.instance.label9SemiBold,
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame1321324158,
                      height: 26.h,
                      width: 13.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                deal.finalPrice ?? '',
                style: TextStyleHelper.instance.body15SemiBold,
              ),
              SizedBox(width: 8.h),
              Text('/ person', style: TextStyleHelper.instance.label11),
            ],
          ),
        ],
      ),
    );
  }
}
