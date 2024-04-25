import 'package:dartz/dartz.dart';
import 'package:mentorship/core/error/failures.dart';
import 'package:mentorship/features/home/domain/entities/get_all_rockets_entity.dart';
import 'package:mentorship/features/home/domain/repositories/home_domain_repo.dart';

class HomeUseCase {
  HomeDomainRepo homeDomainRepo;

  HomeUseCase(this.homeDomainRepo);

  Future<Either<Failures, List<RocketEntity>>> getAllRockets() =>
      homeDomainRepo.getAllRockets();
}
