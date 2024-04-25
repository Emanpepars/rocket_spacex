import 'package:dartz/dartz.dart';
import 'package:mentorship/core/error/failures.dart';
import 'package:mentorship/features/home/data/data_sources/home_dto.dart';
import 'package:mentorship/features/home/domain/entities/get_all_rockets_entity.dart';
import 'package:mentorship/features/home/domain/repositories/home_domain_repo.dart';

class HomeDataRepo implements HomeDomainRepo {
  HomeDto homeDto;

  HomeDataRepo(this.homeDto);

  @override
  Future<Either<Failures, List<RocketEntity>>> getAllRockets() =>
      homeDto.getAllRockets();
}
