import '../../../core/app_export.dart';

class TourCardModel extends Equatable {
  TourCardModel({
    this.image,
    this.title,
    this.subtitle,
    this.dates,
    this.rating,
    this.originalPrice,
    this.discountPercentage,
    this.finalPrice,
    this.spotsLeft,
    this.isGroupTour,
  }) {
    image = image ?? '';
    title = title ?? '';
    subtitle = subtitle ?? '';
    dates = dates ?? '';
    rating = rating ?? '';
    originalPrice = originalPrice ?? '';
    discountPercentage = discountPercentage ?? '';
    finalPrice = finalPrice ?? '';
    isGroupTour = isGroupTour ?? false;
  }

  String? image;
  String? title;
  String? subtitle;
  String? dates;
  String? rating;
  String? originalPrice;
  String? discountPercentage;
  String? finalPrice;
  String? spotsLeft;
  bool? isGroupTour;

  TourCardModel copyWith({
    String? image,
    String? title,
    String? subtitle,
    String? dates,
    String? rating,
    String? originalPrice,
    String? discountPercentage,
    String? finalPrice,
    String? spotsLeft,
    bool? isGroupTour,
  }) {
    return TourCardModel(
      image: image ?? this.image,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      dates: dates ?? this.dates,
      rating: rating ?? this.rating,
      originalPrice: originalPrice ?? this.originalPrice,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      finalPrice: finalPrice ?? this.finalPrice,
      spotsLeft: spotsLeft ?? this.spotsLeft,
      isGroupTour: isGroupTour ?? this.isGroupTour,
    );
  }

  @override
  List<Object?> get props => [
        image,
        title,
        subtitle,
        dates,
        rating,
        originalPrice,
        discountPercentage,
        finalPrice,
        spotsLeft,
        isGroupTour,
      ];
}
