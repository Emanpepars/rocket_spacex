import 'package:mentorship/core/error/failures.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeGetAllRocketsLoading extends HomeState {}

class HomeGetAllRocketsSuccess extends HomeState {}

class HomeGetAllRocketsError extends HomeState {
  Failures failures;

  HomeGetAllRocketsError(this.failures);
}
