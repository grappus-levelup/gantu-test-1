import '../../../core/app_export.dart';
import './category_item_model.dart';
import './destination_card_model.dart';
import './esim_card_model.dart';
import './hotel_card_model.dart';
import './offer_card_model.dart';
import './tour_card_model.dart';
import './visa_card_model.dart';
import 'deal_card_model.dart';

class TravelDashboardModel extends Equatable {
  TravelDashboardModel({
    this.userProfileImage,
    this.userName,
    this.userTitle,
    this.loyaltyPoints,
    this.upcomingTripTitle,
    this.tripDates,
    this.categoryItems,
    this.dealCard,
    this.offerCards,
    this.destinationCards,
    this.hotelCards,
    this.tourCards,
    this.visaCards,
    this.eSimCards,
  }) {
    userProfileImage = userProfileImage ?? ImageConstant.imgImage;
    userName = userName ?? 'Aayush';
    userTitle = userTitle ?? 'The Family Voyager';
    loyaltyPoints = loyaltyPoints ?? '2250';
    upcomingTripTitle = upcomingTripTitle ?? 'Europe With Friends';
    tripDates = tripDates ?? '23 Jan - 15 Feb';
    categoryItems = categoryItems ?? [];
    offerCards = offerCards ?? [];
    destinationCards = destinationCards ?? [];
    hotelCards = hotelCards ?? [];
    tourCards = tourCards ?? [];
    visaCards = visaCards ?? [];
    eSimCards = eSimCards ?? [];
  }

  String? userProfileImage;
  String? userName;
  String? userTitle;
  String? loyaltyPoints;
  String? upcomingTripTitle;
  String? tripDates;
  List<CategoryItemModel>? categoryItems;
  DealCardModel? dealCard;
  List<OfferCardModel>? offerCards;
  List<DestinationCardModel>? destinationCards;
  List<HotelCardModel>? hotelCards;
  List<TourCardModel>? tourCards;
  List<VisaCardModel>? visaCards;
  List<ESimCardModel>? eSimCards;

  TravelDashboardModel copyWith({
    String? userProfileImage,
    String? userName,
    String? userTitle,
    String? loyaltyPoints,
    String? upcomingTripTitle,
    String? tripDates,
    List<CategoryItemModel>? categoryItems,
    DealCardModel? dealCard,
    List<OfferCardModel>? offerCards,
    List<DestinationCardModel>? destinationCards,
    List<HotelCardModel>? hotelCards,
    List<TourCardModel>? tourCards,
    List<VisaCardModel>? visaCards,
    List<ESimCardModel>? eSimCards,
  }) {
    return TravelDashboardModel(
      userProfileImage: userProfileImage ?? this.userProfileImage,
      userName: userName ?? this.userName,
      userTitle: userTitle ?? this.userTitle,
      loyaltyPoints: loyaltyPoints ?? this.loyaltyPoints,
      upcomingTripTitle: upcomingTripTitle ?? this.upcomingTripTitle,
      tripDates: tripDates ?? this.tripDates,
      categoryItems: categoryItems ?? this.categoryItems,
      dealCard: dealCard ?? this.dealCard,
      offerCards: offerCards ?? this.offerCards,
      destinationCards: destinationCards ?? this.destinationCards,
      hotelCards: hotelCards ?? this.hotelCards,
      tourCards: tourCards ?? this.tourCards,
      visaCards: visaCards ?? this.visaCards,
      eSimCards: eSimCards ?? this.eSimCards,
    );
  }

  @override
  List<Object?> get props => [
        userProfileImage,
        userName,
        userTitle,
        loyaltyPoints,
        upcomingTripTitle,
        tripDates,
        categoryItems,
        dealCard,
        offerCards,
        destinationCards,
        hotelCards,
        tourCards,
        visaCards,
        eSimCards,
      ];
}
