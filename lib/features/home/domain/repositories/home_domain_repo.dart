import 'package:dartz/dartz.dart';
import 'package:mentorship/core/error/failures.dart';
import 'package:mentorship/features/home/domain/entities/get_all_rockets_entity.dart';

abstract class HomeDomainRepo {
  Future<Either<Failures, List<RocketEntity>>> getAllRockets();
}
