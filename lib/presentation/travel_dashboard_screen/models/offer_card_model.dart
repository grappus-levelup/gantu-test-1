import '../../../core/app_export.dart';

class OfferCardModel extends Equatable {
  OfferCardModel({
    this.badgeColor,
    this.badgeText,
    this.badgeIcon,
    this.title,
    this.subtitle,
    this.image,
    this.logoImage,
    this.promoCode,
    this.isHotelLogos,
  }) {
    badgeColor = badgeColor ?? '';
    badgeText = badgeText ?? '';
    title = title ?? '';
    subtitle = subtitle ?? '';
    isHotelLogos = isHotelLogos ?? false;
  }

  String? badgeColor;
  String? badgeText;
  String? badgeIcon;
  String? title;
  String? subtitle;
  String? image;
  String? logoImage;
  String? promoCode;
  bool? isHotelLogos;

  OfferCardModel copyWith({
    String? badgeColor,
    String? badgeText,
    String? badgeIcon,
    String? title,
    String? subtitle,
    String? image,
    String? logoImage,
    String? promoCode,
    bool? isHotelLogos,
  }) {
    return OfferCardModel(
      badgeColor: badgeColor ?? this.badgeColor,
      badgeText: badgeText ?? this.badgeText,
      badgeIcon: badgeIcon ?? this.badgeIcon,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      image: image ?? this.image,
      logoImage: logoImage ?? this.logoImage,
      promoCode: promoCode ?? this.promoCode,
      isHotelLogos: isHotelLogos ?? this.isHotelLogos,
    );
  }

  @override
  List<Object?> get props => [
        badgeColor,
        badgeText,
        badgeIcon,
        title,
        subtitle,
        image,
        logoImage,
        promoCode,
        isHotelLogos,
      ];
}
