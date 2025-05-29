import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/offer_card_model.dart';

class OfferCardWidget extends StatelessWidget {
  final OfferCardModel offer;

  OfferCardWidget({Key? key, required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.h,
      decoration: BoxDecoration(
        color: appTheme.colorFFF5F5,
        borderRadius: BorderRadius.circular(20.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: _getBadgeColor(),
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (offer.badgeIcon != null)
                  CustomImageView(
                    imagePath: offer.badgeIcon!,
                    height: 12.h,
                    width: 8.h,
                  ),
                SizedBox(width: 8.h),
                Text(
                  offer.badgeText ?? '',
                  style: TextStyleHelper.instance.body12Medium,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            offer.title ?? '',
            style: TextStyleHelper.instance.title18Medium,
            textAlign: offer.isHotelLogos ?? false
                ? TextAlign.center
                : TextAlign.start,
          ),
          SizedBox(height: 8.h),
          Text(
            offer.subtitle ?? '',
            style: TextStyleHelper.instance.body14,
            textAlign: offer.isHotelLogos ?? false
                ? TextAlign.center
                : TextAlign.start,
          ),
          SizedBox(height: 16.h),
          if (offer.isHotelLogos ?? false)
            _buildHotelLogos()
          else if (offer.image != null)
            CustomImageView(
              imagePath: offer.image!,
              height: 162.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(20.h),
              fit: BoxFit.cover,
            ),
          SizedBox(height: 16.h),
          if (offer.logoImage != null)
            Container(
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                borderRadius: BorderRadius.circular(8.h),
              ),
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: offer.logoImage!,
                height: 10.h,
                width: 44.h,
              ),
            )
          else if (offer.promoCode != null)
            Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  height: 24.h,
                  width: 156.h,
                ),
                Positioned(
                  left: 20.h,
                  top: 4.h,
                  child: Row(
                    children: [
                      Text(
                        'Use Code',
                        style: TextStyleHelper.instance.body12.copyWith(
                          color: appTheme.blackCustom,
                        ),
                      ),
                      SizedBox(width: 8.h),
                      Text(
                        offer.promoCode!,
                        style: TextStyleHelper.instance.body12Medium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Color _getBadgeColor() {
    switch (offer.badgeColor) {
      case 'red':
        return Color(0xFFEF4444);
      case 'purple':
        return Color(0xFFA855F7);
      default:
        return Color(0xFFEF4444);
    }
  }

  Widget _buildHotelLogos() {
    return Container(
      height: 150.h,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 66.h,
              height: 66.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgTajhotelslogo1,
                  height: 28.h,
                  width: 24.h,
                ),
              ),
            ),
          ),
          Positioned(
            top: 64.h,
            right: 32.h,
            child: Container(
              width: 66.h,
              height: 66.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorBlack90026x26,
                  height: 26.h,
                  width: 26.h,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 66.h,
              height: 66.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage1415,
                  height: 40.h,
                  width: 40.h,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 16.h,
            child: Container(
              width: 66.h,
              height: 66.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgMarriotthotelslogo141,
                  height: 32.h,
                  width: 24.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
