import 'package:dartz/dartz.dart';

import '../../data/model/failure.dart';

abstract class NoParamUseCase {
  Future<Either<Failure, bool>> execute();
}
