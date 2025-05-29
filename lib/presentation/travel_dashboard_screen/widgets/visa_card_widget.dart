import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/visa_card_model.dart';

class VisaCardWidget extends StatelessWidget {
  final VisaCardModel visa;

  VisaCardWidget({Key? key, required this.visa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295.h,
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        borderRadius: BorderRadius.circular(20.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(visa.title ?? '', style: TextStyleHelper.instance.title18Medium),
          SizedBox(height: 8.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Visa Processed In ',
                  style: TextStyleHelper.instance.body12Light,
                ),
                TextSpan(
                  text: '14 Days',
                  style: TextStyleHelper.instance.body12Medium.copyWith(
                    color: appTheme.blackCustom,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          if (visa.hasInterviewRequirement ?? false)
            Container(
              decoration: BoxDecoration(
                color: appTheme.colorFFF5F5,
                borderRadius: BorderRadius.circular(8.h),
              ),
              padding: EdgeInsets.all(8.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHandshake,
                    height: 16.h,
                    width: 16.h,
                  ),
                  SizedBox(width: 8.h),
                  Expanded(
                    child: Text(
                      'In Person Interview & Passport submission',
                      style: TextStyleHelper.instance.body12Medium.copyWith(
                        color: appTheme.colorFF9333,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(height: 16.h),
          CustomImageView(
            imagePath: visa.image ?? '',
            height: 252.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(20.h),
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                visa.price ?? '',
                style: TextStyleHelper.instance.title20SemiBold,
              ),
              if (visa.hasGetVisaButton ?? false)
                Row(
                  children: [
                    Text(
                      'Get Visa',
                      style: TextStyleHelper.instance.body14SemiBold,
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorBlack900,
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
