import '../../../core/app_export.dart';

class DealCardModel extends Equatable {
  DealCardModel({
    this.ratingImage,
    this.rating,
    this.title,
    this.subtitle,
    this.image,
    this.originalPrice,
    this.discountPercentage,
    this.finalPrice,
    this.offersCount,
  }) {
    ratingImage = ratingImage ?? '';
    rating = rating ?? '';
    title = title ?? '';
    subtitle = subtitle ?? '';
    image = image ?? '';
    originalPrice = originalPrice ?? '';
    discountPercentage = discountPercentage ?? '';
    finalPrice = finalPrice ?? '';
    offersCount = offersCount ?? '';
  }

  String? ratingImage;
  String? rating;
  String? title;
  String? subtitle;
  String? image;
  String? originalPrice;
  String? discountPercentage;
  String? finalPrice;
  String? offersCount;

  DealCardModel copyWith({
    String? ratingImage,
    String? rating,
    String? title,
    String? subtitle,
    String? image,
    String? originalPrice,
    String? discountPercentage,
    String? finalPrice,
    String? offersCount,
  }) {
    return DealCardModel(
      ratingImage: ratingImage ?? this.ratingImage,
      rating: rating ?? this.rating,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      image: image ?? this.image,
      originalPrice: originalPrice ?? this.originalPrice,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      finalPrice: finalPrice ?? this.finalPrice,
      offersCount: offersCount ?? this.offersCount,
    );
  }

  @override
  List<Object?> get props => [
        ratingImage,
        rating,
        title,
        subtitle,
        image,
        originalPrice,
        discountPercentage,
        finalPrice,
        offersCount,
      ];
}
