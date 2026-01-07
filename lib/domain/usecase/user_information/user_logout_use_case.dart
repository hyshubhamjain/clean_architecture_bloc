import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jainebook/core/service_locator.dart';
import 'package:jainebook/domain/usecase/use_case.dart';

import '../../../data/model/model.dart';

class UserLogoutUseCase extends NoParamUseCase<bool> {
  final FirebaseAuth auth = sLocator.get<FirebaseAuth>();

  @override
  Future<Either<Failure, bool>> execute() async {
    try {
      await auth.signOut();
      return const Right(true);
    } catch (e) {
      return Left(Failure(code: -1, message: e.toString()));
    }
  }
}
