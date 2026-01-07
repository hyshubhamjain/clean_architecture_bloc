import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jainebook/core/service_locator.dart';
import 'package:jainebook/data/model/failure.dart';
import 'package:jainebook/data/model/user_model.dart';
import 'package:jainebook/domain/repository/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  var firebaseAuth = sLocator.get<FirebaseAuth>();
  @override
  Future<Either<Failure, UserModel>> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    var result = await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (result.user == null) {
      return Left(
        Failure(code: ResponseCode.UNKNOWN, message: 'User creation failed'),
      );
    } else {
      return Right(UserModel(id: result.user!.uid, email: result.user!.email!));
    }
  }

  @override
  Future<String?> getCurrentUserId() async {
    return firebaseAuth.currentUser?.uid;
  }

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<Either<Failure, UserModel>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    var result = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (result.user == null) {
      throw Left(
        Failure(code: ResponseCode.UNKNOWN, message: 'Sign in failed'),
      );
    } else {
      return Right(UserModel(id: result.user!.uid, email: result.user!.email!));
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
