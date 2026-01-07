import 'package:dartz/dartz.dart';
import 'package:jainebook/data/model/model.dart';
import 'package:jainebook/domain/usecase/use_case.dart';
import '../../repository/repo.dart';

class LoginUseCase extends BaseUseCase<LoginUseCaseInput, UserModel> {
  final AuthRepo authRepo;
  final FetchUserInfoUseCase fetchUserInfoUseCase;
  LoginUseCase(this.authRepo, this.fetchUserInfoUseCase);

  @override
  Future<Either<Failure, UserModel>> execute(LoginUseCaseInput input) async {
    try {
      var data = await authRepo.signInWithEmailAndPassword(
        input.email,
        input.password,
      );
      return await data.fold((failure) async => Left(failure), (
        userModel,
      ) async {
        var userInfoResult = await fetchUserInfoUseCase.execute(
          userModel.id != null ? userModel.id! : '',
        );
        return userInfoResult.fold(
          (failure) => Left(failure),
          (userModel) => Right(userModel),
        );
      });
    } catch (e) {
      return Left(Failure(code: -1, message: e.toString()));
    }
  }
}

class LoginUseCaseInput {
  String email;
  String password;
  LoginUseCaseInput(this.email, this.password);
}
