import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/category_item_model.dart';

class CategoryGridWidget extends StatelessWidget {
  final CategoryItemModel category;

  CategoryGridWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        borderRadius: BorderRadius.circular(20.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: category.iconPath ?? '',
            height: 21.h,
            width: 21.h,
          ),
          SizedBox(height: 8.h),
          Text(
            category.title ?? '',
            style: TextStyleHelper.instance.body14Medium,
          ),
        ],
      ),
    );
  }
}
