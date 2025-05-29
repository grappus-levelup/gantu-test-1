import '../../../core/app_export.dart';

class VisaCardModel extends Equatable {
  VisaCardModel({
    this.title,
    this.processingTime,
    this.image,
    this.price,
    this.hasInterviewRequirement,
    this.hasGetVisaButton,
  }) {
    title = title ?? '';
    processingTime = processingTime ?? '';
    image = image ?? '';
    price = price ?? '';
    hasInterviewRequirement = hasInterviewRequirement ?? false;
    hasGetVisaButton = hasGetVisaButton ?? false;
  }

  String? title;
  String? processingTime;
  String? image;
  String? price;
  bool? hasInterviewRequirement;
  bool? hasGetVisaButton;

  VisaCardModel copyWith({
    String? title,
    String? processingTime,
    String? image,
    String? price,
    bool? hasInterviewRequirement,
    bool? hasGetVisaButton,
  }) {
    return VisaCardModel(
      title: title ?? this.title,
      processingTime: processingTime ?? this.processingTime,
      image: image ?? this.image,
      price: price ?? this.price,
      hasInterviewRequirement:
          hasInterviewRequirement ?? this.hasInterviewRequirement,
      hasGetVisaButton: hasGetVisaButton ?? this.hasGetVisaButton,
    );
  }

  @override
  List<Object?> get props => [
        title,
        processingTime,
        image,
        price,
        hasInterviewRequirement,
        hasGetVisaButton,
      ];
}
