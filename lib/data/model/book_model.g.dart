// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookModel _$BookModelFromJson(Map<String, dynamic> json) => _BookModel(
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  author: json['author'] as String,
  illustrator: json['illustrator'] as String,
  description: json['description'] as String,
  language: json['language'] as String,
  categories: (json['categories'] as List<dynamic>)
      .map((e) => $enumDecode(_$BookCategoryEnumMap, e))
      .toList(),
  ageGroup: (json['ageGroup'] as List<dynamic>)
      .map((e) => $enumDecode(_$AgeGroupEnumMap, e))
      .toList(),
  type: json['type'] as String,
  coverUrl: json['coverUrl'] as String,
  pagesCount: (json['pagesCount'] as num).toInt(),
  fileType: $enumDecode(_$FileTypeEnumMap, json['fileType']),
  storagePath: json['storagePath'] as String,
  isPremium: json['isPremium'] as bool,
  price: (json['price'] as num).toDouble(),
  popularityScore: (json['popularityScore'] as num).toDouble(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$BookModelToJson(_BookModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'author': instance.author,
      'illustrator': instance.illustrator,
      'description': instance.description,
      'language': instance.language,
      'categories': instance.categories
          .map((e) => _$BookCategoryEnumMap[e]!)
          .toList(),
      'ageGroup': instance.ageGroup.map((e) => _$AgeGroupEnumMap[e]!).toList(),
      'type': instance.type,
      'coverUrl': instance.coverUrl,
      'pagesCount': instance.pagesCount,
      'fileType': _$FileTypeEnumMap[instance.fileType]!,
      'storagePath': instance.storagePath,
      'isPremium': instance.isPremium,
      'price': instance.price,
      'popularityScore': instance.popularityScore,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$BookCategoryEnumMap = {
  BookCategory.fiction: 'fiction',
  BookCategory.nonFiction: 'nonFiction',
  BookCategory.biography: 'biography',
  BookCategory.science: 'science',
  BookCategory.technology: 'technology',
  BookCategory.history: 'history',
  BookCategory.fantasy: 'fantasy',
  BookCategory.mystery: 'mystery',
  BookCategory.romance: 'romance',
  BookCategory.children: 'children',
  BookCategory.comics: 'comics',
  BookCategory.selfHelp: 'selfHelp',
  BookCategory.education: 'education',
  BookCategory.religion: 'religion',
  BookCategory.poetry: 'poetry',
};

const _$AgeGroupEnumMap = {
  AgeGroup.baby: 'baby',
  AgeGroup.toddler: 'toddler',
  AgeGroup.earlyChildhood: 'earlyChildhood',
  AgeGroup.middleChildhood: 'middleChildhood',
  AgeGroup.teen: 'teen',
  AgeGroup.youngAdult: 'youngAdult',
  AgeGroup.adult: 'adult',
  AgeGroup.senior: 'senior',
  AgeGroup.allAges: 'allAges',
};

const _$FileTypeEnumMap = {
  FileType.pdf: 'pdf',
  FileType.epub: 'epub',
  FileType.mobi: 'mobi',
  FileType.azw: 'azw',
  FileType.txt: 'txt',
  FileType.html: 'html',
};
