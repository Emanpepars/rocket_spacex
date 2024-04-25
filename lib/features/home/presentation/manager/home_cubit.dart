import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/features/home/data/repositories/home_data_repo.dart';
import 'package:mentorship/features/home/domain/entities/get_all_rockets_entity.dart';
import 'package:mentorship/features/home/domain/use_cases/home_use_case.dart';

import '../../data/data_sources/home_dto.dart';
import '../../domain/repositories/home_domain_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeDto homeDto;
  late HomeDomainRepo homeDomainRepo;

  HomeCubit(this.homeDto) : super(HomeInitial()) {
    homeDomainRepo = HomeDataRepo(homeDto);
  }

  static HomeCubit get(context) => BlocProvider.of(context);

  List<RocketEntity> rockets = [];

  getAllRockets() async {
    emit(HomeGetAllRocketsLoading());
    HomeUseCase homeUseCase = HomeUseCase(homeDomainRepo);
    var result = await homeUseCase.getAllRockets();
    print(result);
    result.fold((l) => emit(HomeGetAllRocketsError(l)), (r) {
      rockets = r;
      emit(HomeGetAllRocketsSuccess());
    });
  }
}
