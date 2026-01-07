import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed()
abstract class UserModel with _$UserModel {
  const factory UserModel({
    String? id,
    String? name,
    String? email,
    String? phoneNumber,
    DateTime? createdAt,
  }) = _UserModel;

  factory UserModel.create({
    String? id,
    String? name,
    String? email,
    String? phoneNumber,
    DateTime? createdAt,
  }) {
    return UserModel(
      id: id,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      createdAt: createdAt ?? DateTime.now(),
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
