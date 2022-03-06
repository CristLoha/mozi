import 'package:get/get.dart';

import 'package:mozi/app/modules/detail_movie/bindings/detail_movie_binding.dart';
import 'package:mozi/app/modules/detail_movie/views/detail_movie_view.dart';
import 'package:mozi/app/modules/home/bindings/home_binding.dart';
import 'package:mozi/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_MOVIE,
      page: () => DetailMovieView(),
      binding: DetailMovieBinding(),
    ),
  ];
}
