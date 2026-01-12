import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jainebook/data/model/failure.dart';
import 'package:jainebook/data/model/user_model.dart';
import 'package:jainebook/domain/repository/user_repo.dart';
import 'package:jainebook/domain/usecase/base_use_case.dart';

@injectable
class SaveUserInfoUseCase extends BaseUseCase<UserModel, void> {
  UserRepo userRepo;
  SaveUserInfoUseCase(this.userRepo);

  @override
  Future<Either<Failure, void>> execute(UserModel input) async {
    try {
      return userRepo.saveUser(input);
    } catch (e) {
      return Left(Failure(code: -1, message: e.toString()));
    }
  }
}
