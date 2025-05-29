import '../../../core/app_export.dart';

class DestinationCardModel extends Equatable {
  DestinationCardModel({
    this.backgroundImage,
    this.duration,
    this.title,
    this.price,
  }) {
    backgroundImage = backgroundImage ?? '';
    duration = duration ?? '';
    title = title ?? '';
    price = price ?? '';
  }

  String? backgroundImage;
  String? duration;
  String? title;
  String? price;

  DestinationCardModel copyWith({
    String? backgroundImage,
    String? duration,
    String? title,
    String? price,
  }) {
    return DestinationCardModel(
      backgroundImage: backgroundImage ?? this.backgroundImage,
      duration: duration ?? this.duration,
      title: title ?? this.title,
      price: price ?? this.price,
    );
  }

  @override
  List<Object?> get props => [backgroundImage, duration, title, price];
}
