import 'package:dartz/dartz.dart';
import 'package:jainebook/data/model/model.dart';
import 'package:jainebook/domain/repository/repo.dart';
import 'package:jainebook/domain/usecase/use_case.dart';

class ForgetPasswordUseCase
    extends BaseUseCase<ForgetPasswordUseCaseInput, void> {
  ForgetPasswordUseCase(this.repository);

  final AuthRepo repository;

  @override
  Future<Either<Failure, void>> execute(ForgetPasswordUseCaseInput input) {
    return repository.sendPasswordResetEmail(input.email);
  }
}

class ForgetPasswordUseCaseInput {
  final String email;

  ForgetPasswordUseCaseInput(this.email);
}
