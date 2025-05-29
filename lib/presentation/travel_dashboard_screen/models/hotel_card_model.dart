import '../../../core/app_export.dart';

class HotelCardModel extends Equatable {
  HotelCardModel({
    this.title,
    this.location,
    this.rating,
    this.image,
    this.originalPrice,
    this.discountPercentage,
    this.finalPrice,
    this.hasLimitedDeal,
    this.roomsLeft,
    this.hasSelectRoom,
  }) {
    title = title ?? '';
    location = location ?? '';
    rating = rating ?? '';
    image = image ?? '';
    originalPrice = originalPrice ?? '';
    discountPercentage = discountPercentage ?? '';
    finalPrice = finalPrice ?? '';
    hasLimitedDeal = hasLimitedDeal ?? false;
    hasSelectRoom = hasSelectRoom ?? false;
  }

  String? title;
  String? location;
  String? rating;
  String? image;
  String? originalPrice;
  String? discountPercentage;
  String? finalPrice;
  bool? hasLimitedDeal;
  String? roomsLeft;
  bool? hasSelectRoom;

  HotelCardModel copyWith({
    String? title,
    String? location,
    String? rating,
    String? image,
    String? originalPrice,
    String? discountPercentage,
    String? finalPrice,
    bool? hasLimitedDeal,
    String? roomsLeft,
    bool? hasSelectRoom,
  }) {
    return HotelCardModel(
      title: title ?? this.title,
      location: location ?? this.location,
      rating: rating ?? this.rating,
      image: image ?? this.image,
      originalPrice: originalPrice ?? this.originalPrice,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      finalPrice: finalPrice ?? this.finalPrice,
      hasLimitedDeal: hasLimitedDeal ?? this.hasLimitedDeal,
      roomsLeft: roomsLeft ?? this.roomsLeft,
      hasSelectRoom: hasSelectRoom ?? this.hasSelectRoom,
    );
  }

  @override
  List<Object?> get props => [
        title,
        location,
        rating,
        image,
        originalPrice,
        discountPercentage,
        finalPrice,
        hasLimitedDeal,
        roomsLeft,
        hasSelectRoom,
      ];
}
