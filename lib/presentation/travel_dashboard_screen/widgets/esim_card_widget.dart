import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/esim_card_model.dart';

class ESimCardWidget extends StatelessWidget {
  final ESimCardModel eSim;

  ESimCardWidget({Key? key, required this.eSim}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 149.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        image: DecorationImage(
          image: AssetImage(eSim.backgroundImage ?? ''),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 16.h,
            left: 12.h,
            child: Text(
              eSim.title ?? '',
              style: TextStyleHelper.instance.title22Medium,
            ),
          ),
        ],
      ),
    );
  }
}
