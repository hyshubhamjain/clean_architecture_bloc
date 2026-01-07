import 'package:dartz/dartz.dart';
import 'package:jainebook/data/model/failure.dart';
import 'package:jainebook/data/model/user_model.dart';

abstract class AuthRepo {
  Future<void> signOut();
  Future<String?> getCurrentUserId();
  Future<void> sendPasswordResetEmail(String email);
  Future<Either<Failure, UserModel>> createUserWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, UserModel>> signInWithEmailAndPassword(
    String email,
    String password,
  );
}
