import 'package:dartz/dartz.dart';
import 'package:jainebook/domain/repository/repo.dart';

import '../../../data/model/failure.dart';
import '../no_param_use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class IsUserAuthenticatedUseCase extends NoParamUseCase {
  final AuthRepo userRepo;

  IsUserAuthenticatedUseCase(this.userRepo);

  @override
  Future<Either<Failure, bool>> execute() {
    return userRepo.getUserStatus();
  }
}
