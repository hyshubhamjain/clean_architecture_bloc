import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
abstract class BookModel with _$BookModel {
  const factory BookModel({
    required String title,
    required String subtitle,
    required String author,
    required String illustrator,
    required String description,
    required String language,
    required List<BookCategory> categories,
    required List<AgeGroup> ageGroup,
    required String type,
    required String coverUrl,
    required int pagesCount,
    required FileType fileType,
    required String storagePath,
    required bool isPremium,
    required double price,
    required double popularityScore,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  factory BookModel.create(
    String? title,
    String? subtitle,
    String? author,
    String? illustrator,
    String? description,
    String? language,
    List<BookCategory> categories,
    List<AgeGroup> ageGroup,
    String? type,
    String? coverUrl,
    int? pagesCount,
    FileType? fileType,
    String? storagePath,
    bool? isPremium,
    double? price,
    double? popularityScore,
    DateTime? createdAt,
    DateTime? updatedAt,
  ) {
    return BookModel(
      title: title ?? '',
      author: author ?? '',
      language: language ?? '',
      categories: [...categories],
      fileType: fileType ?? FileType.pdf,
      storagePath: storagePath ?? '',
      subtitle: subtitle ?? '',
      illustrator: illustrator ?? '',
      description: description ?? '',
      ageGroup: [...ageGroup],
      type: type ?? '',
      coverUrl: coverUrl ?? '',
      pagesCount: pagesCount ?? 0,
      isPremium: isPremium ?? false,
      price: price ?? 0.0,
      popularityScore: popularityScore ?? 0.0,
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }
}

enum BookCategory {
  fiction,
  nonFiction,
  biography,
  science,
  technology,
  history,
  fantasy,
  mystery,
  romance,
  children,
  comics,
  selfHelp,
  education,
  religion,
  poetry,
  // Add more as needed
}

enum AgeGroup {
  baby, // 0-2 years
  toddler, // 2-4 years
  earlyChildhood, // 5-7 years
  middleChildhood, // 8-12 years
  teen, // 13-17 years
  youngAdult, // 18-25 years
  adult, // 26-64 years
  senior, // 65+ years
  allAges, // Suitable for everyone
}

enum FileType {
  pdf,
  epub,
  mobi,
  azw,
  txt,
  html,
  // Add more as needed
}
