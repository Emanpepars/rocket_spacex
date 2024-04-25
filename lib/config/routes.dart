import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/features/falcon_9/presentation/pages/falcon_9_screen.dart';

import '../core/api/dio_consumer.dart';
import '../features/home/data/data_sources/home_dto.dart';
import '../features/home/presentation/manager/home_cubit.dart';
import '../features/home/presentation/pages/home_screen.dart';

class Routes {
  static const String falconLaunch = '/';

  static const String home = 'home';
}

class AppRoute {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.falconLaunch:
        return MaterialPageRoute(builder: (context) => const Falcon9Screen());
      case Routes.home:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider<HomeCubit>(
              create: (context) =>
                  HomeCubit(RemoteHomeDto(DioConsumer(Dio())))..getAllRockets(),
              child: const HomeScreen()),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Text('hii'),
                ));
    }
  }
}
