import 'package:dartz/dartz.dart';
import 'package:jainebook/data/model/model.dart';
import 'package:jainebook/domain/usecase/use_case.dart';
import '../../repository/repo.dart';

class RegistrationUseCase
    extends BaseUseCase<RegistrationUseCaseInput, UserModel> {
  final AuthRepo authRepo;
  final SaveUserInfoUseCase saveUserInfoUseCase;
  RegistrationUseCase(this.authRepo, this.saveUserInfoUseCase);

  @override
  Future<Either<Failure, UserModel>> execute(
    RegistrationUseCaseInput input,
  ) async {
    try {
      var data = await authRepo.createUserWithEmailAndPassword(
        input.email,
        input.password,
      );
      return await data.fold<Future<Either<Failure, UserModel>>>(
        (failure) async {
          return Left(failure);
        },
        (userModel) async {
          var saveResult = await saveUserInfoUseCase.execute(
            UserModel.create(
              id: userModel.id,
              email: input.email,
              name: input.name,
              phoneNumber: input.phoneNumber,
            ),
          );
          return saveResult.fold<Either<Failure, UserModel>>(
            (failure) => Left(failure),
            (r) => Right(userModel),
          );
        },
      );
    } catch (e) {
      return Left(Failure(code: -1, message: e.toString()));
    }
  }
}

class RegistrationUseCaseInput {
  String email;
  String password;
  String name;
  String phoneNumber;
  RegistrationUseCaseInput(
    this.email,
    this.password,
    this.name,
    this.phoneNumber,
  );
}
