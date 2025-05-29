import '../../../core/app_export.dart';

class CategoryItemModel extends Equatable {
  CategoryItemModel({this.iconPath, this.title}) {
    iconPath = iconPath ?? '';
    title = title ?? '';
  }

  String? iconPath;
  String? title;

  CategoryItemModel copyWith({String? iconPath, String? title}) {
    return CategoryItemModel(
      iconPath: iconPath ?? this.iconPath,
      title: title ?? this.title,
    );
  }

  @override
  List<Object?> get props => [iconPath, title];
}
