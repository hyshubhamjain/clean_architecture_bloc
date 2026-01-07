import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:jainebook/core/service_locator.dart';
import 'package:jainebook/data/model/failure.dart';
import 'package:jainebook/data/model/user_model.dart';

import '../../domain/repository/user_repo.dart';

class UserRepoImpl extends UserRepo {
  final FirebaseFirestore firestore = sLocator.get<FirebaseFirestore>();

  @override
  Future<Either<Failure, UserModel>> getUserById(String userId) async {
    try {
      final doc = await firestore.collection('users').doc(userId).get();
      if (doc.exists) {
        return Right(UserModel.fromJson(doc.data()!));
      } else {
        return Left(
          Failure(
            code: ResponseCode.NOT_FOUND,
            message: ResponseMessage.USER_NOT_FOUND,
          ),
        );
      }
    } catch (error) {
      return Left(Failure(code: -1, message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveUser(UserModel user) async {
    try {
      await firestore.collection('users').doc(user.id).set(user.toJson());
      return Right(null);
    } catch (error) {
      return Left(
        Failure(code: ResponseCode.UNKNOWN, message: error.toString()),
      );
    }
  }
}
