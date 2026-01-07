import 'package:dartz/dartz.dart';
import 'package:jainebook/data/model/failure.dart';
import 'package:jainebook/data/model/user_model.dart';

abstract class UserRepo {
  Future<Either<Failure, UserModel>> getUserById(String userId);
  Future<Either<Failure, void>> saveUser(UserModel user);
}
