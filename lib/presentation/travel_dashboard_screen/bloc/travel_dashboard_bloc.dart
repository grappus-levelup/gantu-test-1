import '../../../core/app_export.dart';
import '../models/category_item_model.dart';
import '../models/deal_card_model.dart';
import '../models/destination_card_model.dart';
import '../models/esim_card_model.dart';
import '../models/hotel_card_model.dart';
import '../models/offer_card_model.dart';
import '../models/tour_card_model.dart';
import '../models/travel_dashboard_model.dart';
import '../models/visa_card_model.dart';

part 'travel_dashboard_event.dart';
part 'travel_dashboard_state.dart';

class TravelDashboardBloc
    extends Bloc<TravelDashboardEvent, TravelDashboardState> {
  TravelDashboardBloc(TravelDashboardState initialState) : super(initialState) {
    on<TravelDashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TravelDashboardInitialEvent event,
    Emitter<TravelDashboardState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    // Initialize category items
    List<CategoryItemModel> categoryItems = [
      CategoryItemModel(
        iconPath: ImageConstant.imgMaterialsymbolslightflightsmode,
        title: 'Flights',
      ),
      CategoryItemModel(
        iconPath: ImageConstant.imgZondiconslocationhotel,
        title: 'Hotels',
      ),
      CategoryItemModel(
        iconPath: ImageConstant.imgIconparksolidvacation,
        title: 'Holidays',
      ),
      CategoryItemModel(
        iconPath: ImageConstant.imgDocumentGlobeUndefinedGlyphUndefined,
        title: 'Visas',
      ),
      CategoryItemModel(
        iconPath: ImageConstant.imgSimUndefinedGlyphUndefined,
        title: 'E-sim',
      ),
      CategoryItemModel(
        iconPath: ImageConstant.imgSwimmingPoolUndefinedGlyphUndefined,
        title: 'Experiences',
      ),
    ];

    // Initialize deal card
    DealCardModel dealCard = DealCardModel(
      ratingImage: ImageConstant.imgFrame1321324230,
      rating: '7.5',
      title: 'Nordic Iceland Tour',
      subtitle: '7N/8D • Mountains • Hikes',
      image: ImageConstant.imgImage195x279,
      originalPrice: '₹3,55,900/-',
      discountPercentage: '20% off',
      finalPrice: '₹3,22,880',
      offersCount: '3 offers',
    );

    // Initialize offer cards
    List<OfferCardModel> offerCards = [
      OfferCardModel(
        badgeColor: 'red',
        badgeText: 'Live Now',
        badgeIcon: ImageConstant.imgTranslationstreamlinesolar1,
        title: 'Valentine\'s sale by IndiGo',
        subtitle: 'Up to 50% OFF* on bookings for two pax*',
        image: ImageConstant.imgImage162x280,
        logoImage: ImageConstant.imgImage10x44,
      ),
      OfferCardModel(
        badgeColor: 'purple',
        badgeText: 'Coming Soon',
        badgeIcon: ImageConstant.imgDoublealtarrowrightstreamlinesolar1,
        title: 'Winter holidays are here',
        subtitle: 'Biggest sale ever from 5-star hotels',
        isHotelLogos: true,
      ),
      OfferCardModel(
        badgeColor: 'red',
        badgeText: 'Live till 16 Feb',
        badgeIcon: ImageConstant.imgTranslationstreamlinesolar1,
        title: 'Sale on Euro Trip in July',
        subtitle: 'Get up to 25%* OFF on booking',
        image: ImageConstant.imgImage3,
        promoCode: 'SALESPECIAL',
      ),
    ];

    // Initialize destination cards
    List<DestinationCardModel> destinationCards = [
      DestinationCardModel(
        backgroundImage: ImageConstant.img,
        duration: '3N• 4D',
        title: 'Off-beat Iceland',
        price: 'Starting @ ₹24,599/person',
      ),
      DestinationCardModel(
        backgroundImage: ImageConstant.img1,
        duration: '3N• 4D',
        title: 'Silent Japan',
        price: 'Starting @ ₹24,599/person',
      ),
      DestinationCardModel(
        backgroundImage: ImageConstant.img0x0,
        duration: '3N• 4D',
        title: 'Greece',
        price: 'Starting @ ₹24,599/person',
      ),
      DestinationCardModel(
        backgroundImage: ImageConstant.img2,
        duration: '3N• 4D',
        title: 'Maldives',
        price: 'Starting @ ₹24,599/person',
      ),
    ];

    // Initialize hotel cards
    List<HotelCardModel> hotelCards = [
      HotelCardModel(
        title: 'Kalima Resorts',
        location: 'Phuket, Thailand',
        rating: '7.5',
        image: ImageConstant.imgImage6,
        originalPrice: '₹9,900/-',
        discountPercentage: '20% off',
        finalPrice: '₹7,688',
        hasLimitedDeal: true,
        roomsLeft: '2 rooms left',
        hasSelectRoom: true,
      ),
      HotelCardModel(
        title: 'Babylon Avatree Villa...',
        location: 'Phuket, Thailand',
        rating: '7.5',
        image: ImageConstant.imgImage7,
        originalPrice: '₹9,900/-',
        discountPercentage: '20% off',
        finalPrice: '₹7,688',
        hasLimitedDeal: true,
        roomsLeft: '2 rooms left',
      ),
    ];

    // Initialize tour cards
    List<TourCardModel> tourCards = [
      TourCardModel(
        image: ImageConstant.imgImage242x280,
        title: 'Treasures of Anatolia',
        subtitle: 'Turkey in 12 Days',
        dates: '27 Jan-10 Feb',
        rating: '7.5',
        originalPrice: '₹70,000',
        discountPercentage: '20% off',
        finalPrice: '₹63,455',
        spotsLeft: '8 Spots Left',
        isGroupTour: true,
      ),
      TourCardModel(
        image: ImageConstant.imgImage5,
        title: 'Treasures of Anatolia',
        subtitle: 'Turkey in 12 Days',
        dates: '27 Jan-10 Feb',
        rating: '7.5',
        originalPrice: '₹70,000',
        discountPercentage: '20% off',
        finalPrice: '₹63,455',
        spotsLeft: '8 Spots Left',
        isGroupTour: true,
      ),
    ];

    // Initialize visa cards
    List<VisaCardModel> visaCards = [
      VisaCardModel(
        title: 'United Arab Emirates',
        processingTime: 'Visa Processed In 14 Days',
        image: ImageConstant.imgImage252x280,
        price: '₹5,432',
        hasInterviewRequirement: true,
        hasGetVisaButton: true,
      ),
      VisaCardModel(
        title: 'Indonesia',
        processingTime: 'Visa Processed In 14 Days',
        image: ImageConstant.imgImage1,
        price: '₹5,432',
        hasInterviewRequirement: true,
      ),
      VisaCardModel(
        title: 'Japan',
        processingTime: 'Visa Processed In 14 Days',
        image: ImageConstant.imgImage2,
        price: '₹5,432',
        hasInterviewRequirement: true,
        hasGetVisaButton: true,
      ),
    ];

    // Initialize eSim cards
    List<ESimCardModel> eSimCards = [
      ESimCardModel(backgroundImage: ImageConstant.img1, title: 'Japan'),
      ESimCardModel(backgroundImage: ImageConstant.img0x0, title: 'Greece'),
      ESimCardModel(backgroundImage: ImageConstant.img2, title: 'Maldives'),
      ESimCardModel(backgroundImage: ImageConstant.img, title: 'Ice Land'),
    ];

    emit(
      state.copyWith(
        travelDashboardModel: state.travelDashboardModel?.copyWith(
          categoryItems: categoryItems,
          dealCard: dealCard,
          offerCards: offerCards,
          destinationCards: destinationCards,
          hotelCards: hotelCards,
          tourCards: tourCards,
          visaCards: visaCards,
          eSimCards: eSimCards,
        ),
        isLoading: false,
      ),
    );
  }
}
