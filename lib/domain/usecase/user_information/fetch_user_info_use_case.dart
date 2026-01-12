import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jainebook/core/service_locator.dart';
import 'package:jainebook/domain/usecase/use_case.dart';

import '../../../data/model/model.dart';

@injectable
class FetchUserInfoUseCase extends BaseUseCase<String, UserModel> {
  final FirebaseFirestore firestore = sLocator.get<FirebaseFirestore>();

  @override
  Future<Either<Failure, UserModel>> execute(String input) async {
    try {
      var dynamicUserData = await firestore
          .collection('users')
          .doc(input)
          .get();
      if (dynamicUserData.exists) {
        var userModel = UserModel.fromJson(dynamicUserData.data()!);
        return Right(userModel);
      } else {
        return Left(
          Failure(code: ResponseCode.NOT_FOUND, message: 'User not found'),
        );
      }
    } catch (e) {
      return Left(Failure(code: -1, message: e.toString()));
    }
  }
}
