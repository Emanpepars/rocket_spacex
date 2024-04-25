import 'package:dartz/dartz.dart';
import 'package:mentorship/core/api/api_consumer.dart';
import 'package:mentorship/core/api/end_point.dart';
import 'package:mentorship/core/error/failures.dart';
import 'package:mentorship/core/error/server_failures.dart';
import 'package:mentorship/features/home/data/models/get_all_rockets_model.dart';

abstract class HomeDto {
  Future<Either<Failures, List<RocketModel>>> getAllRockets();
}

class RemoteHomeDto extends HomeDto {
  ApiConsumer api;

  RemoteHomeDto(this.api);

  @override
  Future<Either<Failures, List<RocketModel>>> getAllRockets() async {
    try {
      var response = await api.get(EndPoints.getAllRocket);
      List<RocketModel> getAllRocketsModel = (response as List)
          .map((e) => RocketModel.fromJson(e))
          .toList();
      return Right(getAllRocketsModel);
    } catch (e) {
      return Left(ServerFailures(e.toString()));
    }
  }
}
