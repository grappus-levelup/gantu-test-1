import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './bloc/travel_dashboard_bloc.dart';
import './models/travel_dashboard_model.dart';
import './widgets/category_grid_widget.dart';
import './widgets/deal_card_widget.dart';
import './widgets/destination_card_widget.dart';
import './widgets/esim_card_widget.dart';
import './widgets/hotel_card_widget.dart';
import './widgets/offer_card_widget.dart';
import './widgets/tour_card_widget.dart';
import './widgets/visa_card_widget.dart';

class TravelDashboardScreen extends StatelessWidget {
  const TravelDashboardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TravelDashboardBloc>(
      create: (context) => TravelDashboardBloc(
        TravelDashboardState(travelDashboardModel: TravelDashboardModel()),
      )..add(TravelDashboardInitialEvent()),
      child: TravelDashboardScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFFF5F5,
      body: BlocBuilder<TravelDashboardBloc, TravelDashboardState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                _buildHeroSection(context, state),
                _buildMainContent(context, state),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: _buildBottomNavigation(context),
    );
  }

  Widget _buildHeroSection(BuildContext context, TravelDashboardState state) {
    return Container(
      height: 846.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF6891B7), Color(0xFF4A7BA7)],
        ),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame1321323300,
            height: 928.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
            margin: EdgeInsets.only(top: 28.h),
          ),
          _buildUserProfile(context, state),
          _buildLoyaltyPoints(context, state),
          _buildTripCard(context, state),
          _buildSwipeIndicator(context),
        ],
      ),
    );
  }

  Widget _buildUserProfile(BuildContext context, TravelDashboardState state) {
    return Positioned(
      top: 72.h,
      left: 16.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: state.travelDashboardModel?.userProfileImage ??
                ImageConstant.imgImage,
            height: 50.h,
            width: 50.h,
            radius: BorderRadius.circular(25.h),
          ),
          SizedBox(width: 12.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.travelDashboardModel?.userName ?? 'Aayush',
                style: TextStyleHelper.instance.title18Regular,
              ),
              Text(
                state.travelDashboardModel?.userTitle ?? 'The Family Voyager',
                style: TextStyleHelper.instance.title16Regular,
              ),
            ],
          ),
          SizedBox(width: 4.h),
          CustomImageView(
            imagePath: ImageConstant.imgFrame1321324129,
            height: 24.h,
            width: 24.h,
          ),
        ],
      ),
    );
  }

  Widget _buildLoyaltyPoints(BuildContext context, TravelDashboardState state) {
    return Positioned(
      top: 80.h,
      right: 16.h,
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.blackCustom,
          borderRadius: BorderRadius.circular(17.h),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgStarcirclestreamlinesolar1,
              height: 20.h,
              width: 20.h,
            ),
            SizedBox(width: 8.h),
            Text('Loyalty', style: TextStyleHelper.instance.title16),
            SizedBox(width: 12.h),
            Text(
              state.travelDashboardModel?.loyaltyPoints ?? '2250',
              style: TextStyleHelper.instance.title16,
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgVectorWhiteA700,
              height: 5.h,
              width: 10.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTripCard(BuildContext context, TravelDashboardState state) {
    return Positioned(
      top: 142.h,
      left: 16.h,
      right: 16.h,
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.whiteCustom,
          borderRadius: BorderRadius.circular(20.h),
        ),
        padding: EdgeInsets.all(12.h),
        child: Column(
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage121x118,
                  height: 121.h,
                  width: 118.h,
                  radius: BorderRadius.circular(16.h),
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'YOUR UPCOMING TRIP',
                        style: TextStyleHelper.instance.body12Regular,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        state.travelDashboardModel?.upcomingTripTitle ??
                            'Europe With Friends',
                        style: TextStyleHelper.instance.title20Medium,
                      ),
                      SizedBox(height: 32.h),
                      Text(
                        state.travelDashboardModel?.tripDates ??
                            '23 Jan - 15 Feb',
                        style: TextStyleHelper.instance.body12Medium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TRIP INSIGHTS',
                  style: TextStyleHelper.instance.body12Regular,
                ),
                SizedBox(height: 8.h),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.blackCustom,
                    borderRadius: BorderRadius.circular(12.h),
                  ),
                  padding: EdgeInsets.all(12.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant
                            .imgDocumentGlobeUndefinedGlyphUndefinedWhiteA700,
                        height: 14.h,
                        width: 14.h,
                      ),
                      SizedBox(width: 8.h),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Your VISA has been ',
                                style: TextStyleHelper.instance.body14Regular,
                              ),
                              TextSpan(
                                text: 'delayed by a week',
                                style: TextStyleHelper.instance.body14SemiBold
                                    .copyWith(color: appTheme.whiteCustom),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorWhiteA7008x4,
                        height: 4.h,
                        width: 8.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwipeIndicator(BuildContext context) {
    return Positioned(
      bottom: 16.h,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 8.h,
            width: 8.h,
          ),
          SizedBox(width: 12.h),
          Text(
            'SWIPE UP TO EXPLORE',
            style: TextStyleHelper.instance.body12SemiBold.copyWith(
              color: appTheme.whiteCustom,
            ),
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 8.h,
            width: 8.h,
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent(BuildContext context, TravelDashboardState state) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFFF5F5,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.h),
          topRight: Radius.circular(30.h),
        ),
      ),
      transform: Matrix4.translationValues(0, -40.h, 0),
      child: Column(
        children: [
          _buildSearchBar(context, state),
          _buildCategoryGrid(context, state),
          _buildCuratedDeals(context, state),
          _buildOffersSection(context, state),
          _buildBestPlaces(context, state),
          _buildStaycationSection(context, state),
          _buildReserveSpotSection(context, state),
          _buildTrendingVisas(context, state),
          _buildPopularESim(context, state),
          _buildTripCardBottom(context, state),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context, TravelDashboardState state) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.whiteCustom,
          borderRadius: BorderRadius.circular(20.h),
        ),
        padding: EdgeInsets.all(16.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFrame,
              height: 21.h,
              width: 21.h,
            ),
            SizedBox(width: 12.h),
            Text(
              'Where are you headed?',
              style: TextStyleHelper.instance.body14Medium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryGrid(BuildContext context, TravelDashboardState state) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12.h,
          mainAxisSpacing: 12.h,
          childAspectRatio: 1.0,
        ),
        itemCount: state.travelDashboardModel?.categoryItems?.length ?? 0,
        itemBuilder: (context, index) {
          return CategoryGridWidget(
            category: state.travelDashboardModel!.categoryItems![index],
          );
        },
      ),
    );
  }

  Widget _buildCuratedDeals(BuildContext context, TravelDashboardState state) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Text(
            'Here are some curated deals for you',
            style: TextStyleHelper.instance.headline30Medium.copyWith(
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          if (state.travelDashboardModel?.dealCard != null)
            DealCardWidget(deal: state.travelDashboardModel!.dealCard!),
        ],
      ),
    );
  }

  Widget _buildOffersSection(BuildContext context, TravelDashboardState state) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Offers you can\'t resist',
            style: TextStyleHelper.instance.title16Medium,
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 350.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.travelDashboardModel?.offerCards?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: OfferCardWidget(
                    offer: state.travelDashboardModel!.offerCards![index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBestPlaces(BuildContext context, TravelDashboardState state) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best places to visit in February',
            style: TextStyleHelper.instance.title16Medium,
          ),
          SizedBox(height: 16.h),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.h,
              mainAxisSpacing: 16.h,
              childAspectRatio: 0.75,
            ),
            itemCount:
                state.travelDashboardModel?.destinationCards?.length ?? 0,
            itemBuilder: (context, index) {
              return DestinationCardWidget(
                destination:
                    state.travelDashboardModel!.destinationCards![index],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStaycationSection(
    BuildContext context,
    TravelDashboardState state,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Looking for a staycation',
            style: TextStyleHelper.instance.title16Medium,
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 450.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.travelDashboardModel?.hotelCards?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: HotelCardWidget(
                    hotel: state.travelDashboardModel!.hotelCards![index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReserveSpotSection(
    BuildContext context,
    TravelDashboardState state,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reserve your spot',
            style: TextStyleHelper.instance.title16Medium,
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 450.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.travelDashboardModel?.tourCards?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: TourCardWidget(
                    tour: state.travelDashboardModel!.tourCards![index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrendingVisas(BuildContext context, TravelDashboardState state) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Trending Visas', style: TextStyleHelper.instance.title16Medium),
          SizedBox(height: 16.h),
          SizedBox(
            height: 400.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.travelDashboardModel?.visaCards?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: VisaCardWidget(
                    visa: state.travelDashboardModel!.visaCards![index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularESim(BuildContext context, TravelDashboardState state) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Popular e Sim', style: TextStyleHelper.instance.title16Medium),
          SizedBox(height: 16.h),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.h,
              mainAxisSpacing: 16.h,
              childAspectRatio: 1.5,
            ),
            itemCount: state.travelDashboardModel?.eSimCards?.length ?? 0,
            itemBuilder: (context, index) {
              return ESimCardWidget(
                eSim: state.travelDashboardModel!.eSimCards![index],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTripCardBottom(
    BuildContext context,
    TravelDashboardState state,
  ) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFFF5F5,
          borderRadius: BorderRadius.circular(16.h),
        ),
        padding: EdgeInsets.all(16.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle42648,
              height: 70.h,
              width: 70.h,
              radius: BorderRadius.circular(12.h),
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Goa Trip With Family',
                    style: TextStyleHelper.instance.body14Medium.copyWith(
                      color: appTheme.blackCustom,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '23 JAN - 15 FEB',
                    style: TextStyleHelper.instance.body12Medium.copyWith(
                      color: appTheme.blackCustom,
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorBlack90010x5,
              height: 5.h,
              width: 10.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        border: Border(
          top: BorderSide(color: appTheme.colorFFE5E7, width: 1.h),
        ),
      ),
      padding: EdgeInsets.all(16.h),
      child: Row(
        children: [
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame1321324105,
              height: 66.h,
              width: 209.h,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: appTheme.whiteCustom,
              border: Border.all(color: appTheme.colorFFFB92),
              borderRadius: BorderRadius.circular(25.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgChatsquarestreamlinesolar1,
                  height: 21.h,
                  width: 21.h,
                ),
                SizedBox(width: 8.h),
                Text('AI Chat', style: TextStyleHelper.instance.body15SemiBold),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
