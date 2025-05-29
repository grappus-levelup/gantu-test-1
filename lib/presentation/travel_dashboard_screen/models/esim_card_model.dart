import '../../../core/app_export.dart';

class ESimCardModel extends Equatable {
  ESimCardModel({this.backgroundImage, this.title}) {
    backgroundImage = backgroundImage ?? '';
    title = title ?? '';
  }

  String? backgroundImage;
  String? title;

  ESimCardModel copyWith({String? backgroundImage, String? title}) {
    return ESimCardModel(
      backgroundImage: backgroundImage ?? this.backgroundImage,
      title: title ?? this.title,
    );
  }

  @override
  List<Object?> get props => [backgroundImage, title];
}
