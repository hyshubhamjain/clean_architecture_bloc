import 'package:dartz/dartz.dart';
import 'package:jainebook/domain/repository/repo.dart';

import '../../../data/model/failure.dart';
import '../no_param_use_case.dart';

class IsUserAuthenticatedUseCase extends NoParamUseCase<bool> {
  final AuthRepo userRepo;

  IsUserAuthenticatedUseCase(this.userRepo);

  @override
  Future<Either<Failure, bool>> execute() {
    return userRepo.getUserStatus();
  }
}
