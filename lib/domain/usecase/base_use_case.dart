import 'package:dartz/dartz.dart';
import 'package:jainebook/data/model/failure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}
